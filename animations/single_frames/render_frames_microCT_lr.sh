#!/bin/bash

mkdir -p frames_microCT_lr

for ((i=1; i<=360; i++)); do
  angle=$((i))
  echo "Rendering angle: $angle°"
  texfile="frames_microCT_lr/frame_$(printf "%03d" $i).tex"
  pdffile="frames_microCT_lr/frame_$(printf "%03d" $i).pdf"
  pngfile="frames_microCT_lr/frame_$(printf "%03d" $i).png"

  sed "s/%d/$angle/" template_microCT_lr.tex > "$texfile"
  pdflatex -output-directory=frames_microCT_lr "$texfile" > /dev/null
  convert -density 600 "$pdffile" -quality 100 "$pngfile"
done

for f in frames_microCT_lr/*.png; do
  mogrify "$f" -background white -alpha remove -alpha off "$f"
done

ffmpeg -framerate 24 -pattern_type glob -i "frames_microCT_lr/*.png" -c:v libx264 -crf 18 -preset veryslow -pix_fmt yuv420p microCT_lr.mp4
convert -delay 4 -loop 0 frames_microCT_lr/*.png microCT_lr.gif
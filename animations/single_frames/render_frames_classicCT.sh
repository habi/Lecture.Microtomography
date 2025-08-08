#!/bin/bash

mkdir -p frames_classicCT

for ((i=1; i<=360; i++)); do
  angle=$((i))
  echo "Rendering angle: $angle°"
  texfile="frames_classicCT/frame_$(printf "%03d" $i).tex"
  pdffile="frames_classicCT/frame_$(printf "%03d" $i).pdf"
  pngfile="frames_classicCT/frame_$(printf "%03d" $i).png"

  sed "s/%d/$angle/" template_classicCT.tex > "$texfile"
  pdflatex -output-directory=frames_classicCT "$texfile" > /dev/null
  convert -density 600 "$pdffile" -quality 100 "$pngfile"
done

for f in frames_classicCT/*.png; do
  mogrify "$f" -background white -alpha remove -alpha off "$f"
done

ffmpeg -framerate 24 -pattern_type glob -i "frames_classicCT/*.png" -c:v libx264 -crf 18 -preset veryslow -pix_fmt yuv420p classicCT.mp4
convert -delay 4 -loop 0 frames_classicCT/*.png classicCT.gif
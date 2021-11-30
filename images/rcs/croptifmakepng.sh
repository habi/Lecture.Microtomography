# Copy the files in this directory
rsync -rvm --update --include="*/" --include="Tooth????.tif" --exclude="*" ~/1272/ZMK/ToothBattallion/ .
# The 'new' screenshots are all ~20 MB, delete all the smaller ones
# https://superuser.com/a/644274
find . -name "*.tif" -type 'f' -size -8M -delete
# Copy the files from their subfolders
cp */*.tif .
# Edit them
# Even though I set the same background in MeVisLab the images have different background brightnesses, hence the multiple 'transparent'
mogrify -format png -transparent "rgb(242,242,242)" -transparent "rgb(243,243,243)" -transparent "rgb(244,244,244)" -transparent "rgb(245,245,245)" -transparent "rgb(246,246,246)" -transparent "rgb(247,247,247)" -transparent "rgb(248,248,248)" -shave 1500x0 -rotate 180 *.tif
# Remove all .tifs
rm *.tif

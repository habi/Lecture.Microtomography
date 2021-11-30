mogrify -shave 850x650 -scale 1024 -format png -fuzz 2% -transparent "#F8F8F8" p*/*.tif
mogrify -shave 850x650 -scale 1024 -format png -fuzz 10% -transparent "#FFFFFF" f*/*.tif
mogrify -shave 850x650 -scale 1024 -format png -fuzz 2% -transparent "#FFFFFF" t*/*.tif
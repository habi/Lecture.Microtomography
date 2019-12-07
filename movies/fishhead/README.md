The single frames were generated with [CTVox](https://www.bruker.com/products/microtomography/micro-ct-for-sample-scanning/realistic-visualization-by-volume-rendering.html), the key-frames are [here](head-without-gills.sb)

I removed the coordinate arrows (bottom left) and the Bruker logo (top right) with [Fiji](https://fiji.sc) and saved out the single frames again as PNG images.

With ImageMagick I made the (white) background of the single frames transparent and rescaled/shaved the images to HD width.

```bash
mogrify -format png -fuzz 5% -transparent "#FFFFFF" -resize 1280 -shave 0x80 *.png
```

The animation was put into two separate frames, to pause where the gills appear.
Animation 1 is played from the start to frame 160.
Animation 2 is played from frame 161 to the end (frame 481).


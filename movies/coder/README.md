Image from https://giphy.com/gifs/cheezburger-coding-cheezburgernerds-13UZisxBxkjPwI

Converted to single frames based on [this SE answer](https://tex.stackexchange.com/a/240387/828).

```bash
magick convert -coalesce giphy.gif coder.png
```

The framerate of the original GIF is 25, based on

```bash
magick identify -verbose giphy.gif | grep 'Delay'
```

and *frame rate = 100 (tics/s) / 4 (tics/frame) = 25 frames/s* as given in the SE answer above


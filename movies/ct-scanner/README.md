The frames of the CT scanner movie were generated with

```bash
youtube-dl https://youtu.be/2CWpZKuy-NE
ffmpeg -i *.mkv ct-scanner%04d.jpg
```

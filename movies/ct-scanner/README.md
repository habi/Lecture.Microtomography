The CT scanner movie is shown as a succession of frames in the PDF (see page 139 of the 'beamer' manual).
The single frames are *not* in the repository, but can easily be generated with the commands below.

```bash
youtube-dl https://youtu.be/2CWpZKuy-NE
ffmpeg -i *.mkv ct-scanner%04d.jpg
```

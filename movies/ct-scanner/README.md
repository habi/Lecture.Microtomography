The [original movie](https://youtu.be/2CWpZKuy-NE) of the open, running CT scanner was stabilized using [the stabbot](https://www.reddit.com/r/stabbot/comments/72irce/how_to_use_stabbot/) (see [here](https://www.reddit.com/r/stabbot/comments/e6f9pd/please_stabilize_this_id_like_to_use_it_in_a/)).

The frames shown in the presentation have been generated with the following short bash commands.

```bash
youtube-dl https://peertube.video/videos/watch/e431bbb0-9594-41c4-9154-10ceef8b549c -o ct-scanner-stabilized.mp4
ffmpeg -i ct-scanner-stabilized.mp4 -r 24 -ss 4 -t 20 ct-scanner%04d.jpg
```

I should have called /u/stabbot_crop, but I removed the black border in ImageJ...

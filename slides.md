---
author: David Haberthür
title: (micro)-Tomography
date: December 2018
---
<!-- Logo: https://github.com/hakimel/reveal.js/issues/1122#issuecomment-77696397 -->
<link rel="stylesheet" href="css/reveal-override.css"/>

<!-- Banner image -->
![Long-horned beetle](images/Long-horned_Beetle.png)

#  Introduction {data-background-image="images/avatar2017.jpg"}

## Who?
- Dr. David Haberthür
    - [haberthuer@ana.unibe.ch](mailto:haberthuer@ana.unibe.ch?subject=Feedback from the (micro)-tomography lecture)
    - Office [B311](http://osm.org/go/0CZwlGp3A?m)
- Master in Physics
- [PhD in high resolution imaging of the lung](https://boris.unibe.ch/2619/)
- PostDoc at the TOMCAT beamline of the Swiss Light Source at the Paul Scherrer Institute
- Tomography is what I do day-in, day-out

## Here is a substuff
With some text

## Here is some more stuff
With even more text

- Eat spaghetti
- Drink wine
- Have some more
 

# Imaging
There's a lot of stuff to it...

## Why
- Non-destructive insight
- Biological samples

# CT? {data-background-image="images/Ct-internals.jpg"}
 

![A CT scanner without its cover](images/Ct-internals.jpg)
T: X-ray tube, D: X-ray detectors, X: X-ray beam, R: Gantry rotation

(CC BY-SA, [Wikipedia](https://commons.wikimedia.org/wiki/File:Ct-internals.jpg))

## Video

<div align="center">
    <iframe>
        src="https://www.youtube.com/embed/2CWpZKuy-NE">
    </iframe>
</div>

[![CT at max speed](https://img.youtube.com/vi/2CWpZKuy-NE/0.jpg)](https://www.youtube.com/watch?v=2CWpZKuy-NE)

## X-ray generation
- How are x-rays generated
- Why do we need them

## Detection
- What happens after penetration of the sample?
- Attenuation
- Conversion to visible light by Scintillator
- Detection, recording

## Reconstruction
- Radon Transformation
- Filtered backprojection
- Corrections
- Writing to stack

## Machinery
- Hospital CT
- Lab CT
- Synchrotron
- Desktop microCT

![Zeiss](images/9459311320_516179207a_o.jpg) (Zeiss, [CC BY-SA](https://flic.kr/p/fpTrGu))


# Image processing
- ImageJ
- Python

## Big data
- TOMCAT 2560x2160 @ 1500 fps > 8 GB/s
- llll


# Research
- Reproducibility?
- 

# Images

Can we just add images like so?

![Long-horned beetle](images/Long-horned_Beetle.png)

# Videos
TODO: add a video file instead of just a gif

![Rat eye, perfused with micro-Angiofil](images/rat_eye.gif)


# [Colophon](https://en.wikipedia.org/wiki/Colophon_(publishing))
- Written in [Markdown](https://daringfireball.net/projects/markdown/).
- Versioned with [git](https://git-scm.com/), public copy hosted by [GitHub](https://github.com/habi/lecture_microtomography/).
- Converted to a [reveal.js](https://revealjs.com/) presentation with [pandoc](https://pandoc.org/) (see snippet in [README.md](https://github.com/habi/lecture_microtomography/blob/master/README.md)).
- [Public presentation](http://habi.github.io/lecture_microtomography) hosted by [GitHub Pages](https://pages.github.com/).
- Notice a problem or a typo?
  Please file an [issue](https://github.com/habi/lecture_microtomography/issues) or (even better) submit a [pull request](https://github.com/habi/lecture_microtomography/pulls).

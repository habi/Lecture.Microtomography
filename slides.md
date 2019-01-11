---
author: David Haberthür
title: (micro)-Tomography
---

<!-- Logo: https://github.com/hakimel/reveal.js/issues/1122#issuecomment-77696397 -->
<link rel="stylesheet" href="css/reveal-override.css"/>

<!-- Banner image -->
![Long-horned beetle](images/Long-horned_Beetle.png)

# <font color="white">Who?</font> {data-background-image="images/avatar2017.jpg"}
## Dr. David Haberthür
- [haberthuer@ana.unibe.ch](mailto:haberthuer@ana.unibe.ch?subject=Feedback from the (micro)-tomography lecture)
- Office [B311](http://osm.org/go/0CZwlGp3A?m)
- Master in Physics
- [PhD in high resolution imaging of the lung](https://boris.unibe.ch/2619/)
- Postdoctoral researcher at the TOMCAT beamline of the Swiss Light Source at the Paul Scherrer Institute
- Tomography is what I do day-in, day-out

# <font color="white">Biomedical imaging</font> {data-background-image="images/Sagittal_brain_MRI.jpg"}
## Why
- Non-destructive insight
- Biological samples

## Wavelength & Scale
![](https://upload.wikimedia.org/wikipedia/commons/1/10/EM_Spectrum_Properties_edit_de.svg "From Wikipedia, CC BY-SA, https://en.wikipedia.org/wiki/File:EM_Spectrum_Properties_edit.svg")

## Imaging methods
- Light microscopy
- X-ray imaging
- Electron microscopy

# <font color="white">Tomography</font> {data-background-image="images/Ct-internals.jpg"}
## Scanner
<div align="center">
<iframe title="CT at max speed"
	width="480" height="360"
	src="https://www.youtube.com/embed/2CWpZKuy-NE"
	frameborder="0"
	allowfullscreen>
</iframe>
</div>

## X-ray generation
- How are x-rays generated
- Why do we need them

## Projections
<div align="center">
<iframe title="Projections of a lung sample scan"
	width="800" height="600"
	src="movies/KP-TNIKWT02_projections.mp4"
	frameborder="0"
	allowfullscreen>
</iframe>
</div>

## Projections, how?
- What happens after penetration of the sample?
- Attenuation
- Conversion to visible light by Scintillator
- Detection, recording

## Reconstructions
<div align="center">
<iframe title="Reconstructions of a lung sample scan"
	width="800" height="600"
	src="movies/KP-TNIKWT02_reconstructions.mp4"
	frameborder="0"
	allowfullscreen>
</iframe>
</div>

## Reconstruction, how?
- Radon Transformation
- Filtered back projection
- Corrections
- Writing to stack

## Machinery
- Hospital CT
- Lab CT
- Synchrotron
- Desktop microCT

![Zeiss](images/9459311320_516179207a_o.jpg "From Zeiss; CC BY-SA, https://flic.kr/p/fpTrGu")

# Image processing
## What to use?
- ImageJ
- Python

## Big data
- TOMCAT 2560x2160 @ 1500 fps > 8 GB/s
- Desktop uCT > 100s of GBs in a day

## Reproducible research
- Reproducibility?

# Thank you! Questions?
## [Colophon](https://en.wikipedia.org/wiki/Colophon_(publishing))
- Written in [Markdown](https://daringfireball.net/projects/markdown/).
- Versioned with [git](https://git-scm.com/), public copy hosted by [GitHub](https://github.com/habi/lecture_microtomography/).
- Converted to a [reveal.js](https://revealjs.com/) presentation with [pandoc](https://pandoc.org/) (see code snippet in [README.md](https://github.com/habi/lecture_microtomography/blob/master/README.md)).
- [Public presentation](http://habi.github.io/lecture_microtomography) hosted by [GitHub Pages](https://pages.github.com/).
- Spotted an error?
  Please file an [issue](https://github.com/habi/lecture_microtomography/issues) or (even better) submit a [pull request](https://github.com/habi/lecture_microtomography/pulls).

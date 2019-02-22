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
- Postdoctoral researcher at the [TOMCAT beamline](https://www.psi.ch/sls/tomcat/) of the [Swiss Light Source](https://www.psi.ch/sls/) at the [Paul Scherrer Institute](https://www.psi.ch/)
- Tomography is what I do day-in, day-out

# <font color="white">Biomedical imaging</font> {data-background-image="images/Sagittal_brain_MRI.jpg"}
## Why
- Non-destructive insight
- Biological samples

## Wavelength & Scale
![Wavelength and resolution scale](https://upload.wikimedia.org/wikipedia/commons/c/cc/Electromagnetic_spectrum_with_sources.svg "File:Electromagnetic spectrum with sources.svg. (2019, January 3). *Wikimedia Commons, the free media repository*. Retrieved 15:26, February 22, 2019 from <https://commons.wikimedia.org/w/index.php?title=File:Electromagnetic_spectrum_with_sources.svg&oldid=333330293>.")

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
## What is going on here?

![3D_Computed_Tomography](https://upload.wikimedia.org/wikipedia/commons/1/10/3D_Computed_Tomography.png "File:3D Computed Tomography.png. (2018, October 10). *Wikimedia Commons, the free media repository*. Retrieved 15:06, February 22, 2019 from <https://commons.wikimedia.org/w/index.php?title=File:3D_Computed_Tomography.png&oldid=323504200>.")




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

## Image processing

- See lecture of Guillaume Witz

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

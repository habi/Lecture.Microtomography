[![DOI](https://zenodo.org/badge/162259004.svg)](https://zenodo.org/badge/latestdoi/162259004) [![Build LaTeX & upload handout](https://github.com/habi/Lecture.Microtomography/actions/workflows/latex.yaml/badge.svg)](https://github.com/habi/Lecture.Microtomography/actions/workflows/latex.yaml)

# A lecture on (micro)tomography

This repository contains the slides for my talk on X-ray microtomography.
I've held this lecture in the lecture series on [Advanced Microscopy](https://www.mic.unibe.ch/studies/lecture_series_on_advanced_microscopy/) and [Advanced Ultraprecision Engineering II](https://www.philnat.unibe.ch/studies/study_programs/master_s_in_precision_engineering/index_eng.html).
Since both these courses differ in alloted time, I've made [Git branches](https://github.com/habi/Lecture.Microtomography/branches) for the relevant series, which I'm merging into the `main` branch once the course comes up.

The slides are generated in [LaTeX](https://www.latex-project.org/)/[beamer](https://bitbucket.org/rivanvx/beamer/wiki/Home) with the slightly tweaked [official beamer template of the University of Bern](http://intern.unibe.ch/dienstleistungen/corporate_design_und_vorlagen/praesentationen/index_ger.html) and are automatically compiled to a PDF with a [GitHub action](https://github.com/xu-cheng/latex-action).

If all goes well, you should be able to access the resulting PDF here: https://habi.github.io/Lecture.Microtomography/XRayMicroTomography.Handout.pdf
This PDF is always corresponding to the last (successfully compiled) version I committed (and thus should be the one that I presented).

----

If you set up the repository on a new machine, then:
- `git clone git@github.com:habi/Lecture.Microtomography.git` it to a folder
- Track *all* remote branches with `git branch -r | grep -v '\->' | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" | while read remote; do git branch --track "${remote#origin/}" "$remote"; done` (hat tip to https://stackoverflow.com/a/10312587)
- Use [git worktree](https://git-scm.com/docs/git-worktree) to have the relevant branches in folders. `git worktree add UPE advanced_course_II_ultraprecision_engineering & git worktree add GCB advanced_microscopy_series`
- Tweak lectures and copy stuff from one folder to another.
- Update [the workflow file to point](https://github.com/habi/Lecture.Microtomography/blob/main/.github/workflows/latex.yaml) to the [correct branch](https://github.com/habi/Lecture.Microtomography/branches) to currently build for the online handout.

[![DOI](https://zenodo.org/badge/162259004.svg)](https://zenodo.org/badge/latestdoi/162259004) [![Build LaTeX & upload handout](https://github.com/habi/Lecture.Microtomography/actions/workflows/latex.yaml/badge.svg)](https://github.com/habi/Lecture.Microtomography/actions/workflows/latex.yaml)

# A lecture on (micro)tomography

This repository contains the slides for my talk on X-ray microtomography.
I've given this lecture in the series on [Advanced Microscopy](https://www.mic.unibe.ch/studies/lecture_series_on_advanced_microscopy/) and the [Advanced Ultraprecision Engineering II](https://www.philnat.unibe.ch/studies/study_programs/master_s_in_precision_engineering/index_eng.html) course.
Since These courses differ in the time allotted, I've made [Git branches](https://github.com/habi/Lecture.Microtomography/branches) for the relevant series to make it easy to mix-and-match what I can tell in the available time.

The slides are generated in [LaTeX](https://www.latex-project.org/)/[beamer](https://bitbucket.org/rivanvx/beamer/wiki/Home) with a slightly tweaked [official Beamer template of the University of Bern](http://intern.unibe.ch/dienstleistungen/corporate_design_und_vorlagen/praesentationen/index_ger.html) and are automatically compiled into a PDF with a [GitHub action](https://github.com/xu-cheng/latex-action).

If all goes well, you should be able to access the [resulting *handout* PDF here](https://habi.github.io/Lecture.Microtomography/XRayMicroTomography.Handout.pdf).
This PDF corresponds to the last (successfully compiled and committed version, and thus should be the one that I presented.

----

If you set up the repository on a new machine:

- Clone the repository:

  ```bash
  git clone git@github.com:habi/Lecture.Microtomography.git
  cd Lecture.Microtomography
  ```

  Use a folder such that `../../../Documents/library.bib` is either the correct references file or a symlink of it[^1].
- Fetch all remote branches:

  ```bash
  git fetch --all --prune
  ```

- Keep the original checkout on `main`, and create separate [git worktree](https://git-scm.com/docs/git-worktree) folders for the two course-specific branches:

  ```bash
  git worktree add ../UPE advanced_course_II_ultraprecision_engineering
  git worktree add ../GCB advanced_microscopy_series
  ```

- Check the resulting setup with `git worktree list`, you will then have three working directories:

  ```text
  Lecture.Microtomography/   main
  UPE/                       advanced_course_II_ultraprecision_engineering
  GCB/                       advanced_microscopy_series
  ```

- Make general changes, such as changes to `preamble.tex`, in the `main` worktree and commit them there.
  And "ONLY" there!
  To propagate these changes to the course-specific versions, merge `main` from inside each corresponding worktree:

  ```bash
  cd ../UPE
  git merge main
  cd ../GCB
  git merge main
  ```

- Course-specific changes can be made directly in the corresponding worktree without switching branches.
  E.g. copy slides and images from one folder to another.
- Update [the workflow file to point](https://github.com/habi/Lecture.Microtomography/blob/main/.github/workflows/latex.yaml) to point to the [branch](https://github.com/habi/Lecture.Microtomography/branches) that should currently be built for the online handout.
- This will produce a correctly built handout at the given link above[^2].

[^1]: On Linux, check out the repository in `/media/habi/Fast_SSD/Talks/Lectures/`, then run `ln -s /home/habi/P/Documents/library.bib /media/habi/Fast_SSD/Documents/library.bib`.
      On macOS, check out the repository in `~/Dev/Talks/` on macOS plus using Zotero to save `library.bib` into `~/Documents/library.bib`.
      Then all should just work if you follow the rest of the setup with `git worktree` on both machines, too.
[^2]: And [the presentation PDF](https://habi.github.io/Lecture.Microtomography/XRayMicroTomography.Presentation.pdf) as a backup, but that is evident if you looked at the [GitHub Action](https://github.com/habi/Lecture.Microtomography/blob/main/.github/workflows/latex.yaml).

# Human head
The human head scan was downloaded from the [Cancer Imaging Archive](https://www.cancerimagingarchive.net).
This is the direct link to the dataset: https://www.cancerimagingarchive.net/nbia-search/?saved-cart=nbia-76761575299081509
The data can be fairly easily downloaded with the [NBIA Data Retriever](https://wiki.cancerimagingarchive.net/display/NBIA/Downloading+TCIA+Images).
We saved a copy of the data in the [human](human) folder.

We loaded the DICOM slices in Fiji, resliced it to show it from the side and then used to generate an MIP.
According to the DICOM tags, the voxel size is `0.4883x0.4883x0.625 mm^3`
A citation to https://doi.org/10.1007/s10278-013-9622-7 needs to be included (e.g. \cite{Clark2013}).

# Mouse head
The mouse head is the same as shown in the early animation.
The [(cropped) images](/movies/mouse_skull/rawdata/cropped) were loaded in ImageJ, resliced to show the head from the side and then used to generate an MIP.
The voxel size 7.96 um.

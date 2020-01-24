## Test environments
* local OS X install, R 3.6.0
* ubuntu 14.04 (on travis-ci), R 3.6.0
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.

---

Size of tarball has been large for many years with `oro.nifti` - images in vignette are large. 

"Package has a VignetteBuilder field but no prebuilt vignette index.", which is not a concerning note as one of the vignettes is really an `rticles` Rmd file.

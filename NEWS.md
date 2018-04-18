# oro.nifti 0.9.5

* Fixed niftiExtensions to write out nifti files and not mess up header.
* Integer data types should import into R integers unless scale slope/intercept parameters are set

# oro.nifti 0.8.1

* Added a `NEWS.md` file to track changes to the package.

* Added changes to readNIfTI so that pixdim doesn't screw things up with 
  zero-dimensions.


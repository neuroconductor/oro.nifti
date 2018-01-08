#' @title Convert oro.nifti nifti to RNifti niftiImage object
#' @description Converts a nifti from oro.nifti to a 
#' niftiImage object from the RNifti package
#' @param image \code{\link{nifti}} object
#' @param verbose print messages, passed to \code{\link{writeNIfTI}}
#' @return Object of class \code{niftiImage}
#' @export
#' @importFrom RNifti readNifti
oro2nii = function(image, verbose = FALSE) {
  outfile = tempfile()
  writeNIfTI(image, 
             filename = outfile, 
             onefile = TRUE,
             gzipped = TRUE,
             verbose = verbose)
  outfile = paste0(outfile, ".nii.gz")
  img = RNifti::readNifti(outfile)
  return(img)
}


#' @title Creates onefile specification
#' @return Object of class nifti
#' @param img nifti object
#' @description Changes the magic and vox_offset slots to be consistent 
#' with onefile option in \code{\link{writeNIfTI}}.  As of version 0.4.0,
#' \code{oro.nifti} did not support "ni1" magic outputs for output.
#' @export
onefile = function(img){
  img@magic = "n+1"
  img@vox_offset = 352
  img
}

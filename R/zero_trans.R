#' @title Change intercept to 0 and slope to 1
#' @return object of type passed
#' @param img nifti object (or character of filename).  If anlz, will return 
#' unchanged anlz image
#' @description Forces image \code{scl_slope} to 1 and \code{scl_inter}
#' to be 0 of slots of class
#' nifti.  This is so that when images are rendered/written,
#'  the values correspond to those
#' in the array (stored in Data slot) and are not scaled.
#' @name zero_trans
#' @export
zero_trans = function(img){
  if (is.nifti(img)){
    scl_slope(img) = 1
    scl_inter(img) = 0
  }
  return(img)
}



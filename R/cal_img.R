
#' @title Set Max/Min for nifti object by range of data
#' @return object of type nifti
#' @param img nifti object
#' @param infok Indicator if \code{Inf} and \code{-Inf} are OK.  Default is 
#' \code{TRUE}.  If \code{FALSE} and max or min is infinity, then 
#' \code{cal_min}
#' or \code{cal_max} is set to infinity (neg or pos), respectively.
#' @description Rescales image cal_max and cal_min slots to be the 
#' max and min, 
#' respectively, of an object of class nifti, with \code{na.rm=TRUE}. 
#' This is so that 
#' when images are rendered/written, the values correspond to those
#' in the array (stored in .Data slot) are plotted on correct grayscale 
#' and no error is
#' given by \code{writeNIfTI}.
#' @name cal_img
#' @export
cal_img = function(img, infok = TRUE){
  cmax = max(img, na.rm=TRUE) 
  if (!infok){
    cmax = ifelse(is.finite(cmax), cmax, 0)
  }
  cmin = min(img, na.rm=TRUE) 
  if (!infok){
    cmin = ifelse(is.finite(cmin), cmin, 0)
  }  
  cal.max(img) = cmax
  cal.min(img) = cmin
  img
}

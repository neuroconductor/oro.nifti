#' @title Set Minimum/Maximum Values for NIfTI data
#' @return An object of class \code{nifti}.
#' @param img is a \code{nifti} object.
#' @param infok is a logical value whether or not \code{Inf} and 
#' \code{-Inf} are acceptable (default = \code{TRUE}).  If \code{FALSE} 
#' and max or min is infinity, then \code{cal_min} or \code{cal_max} is 
#' set to infinity (negative or positive), respectively.
#' @description Rescales image \code{cal_max} and \code{cal_min} slots to 
#' be the max and min, respectively, of an object of class nifti, with 
#' \code{na.rm = TRUE}.  This is so that when images are rendered/written, 
#' the values correspond to those in the array (stored in \code{.Data} slot) 
#' are plotted on correct greyscale and no error is given by \code{writeNIfTI}.
#' @author John Muschelli \email{muschellij2@@gmail.com}
#' @name calibrateImage
#' @rdname cal_img
#' @export
calibrateImage <- function(img, infok = TRUE) {
  range_img = range(img, na.rm = TRUE)
  cmax <- range_img[2]
  if (!infok) {
    cmax <- ifelse(is.finite(cmax), cmax, 0)
  }
  cmin <- range_img[1]
  if (! infok) {
    cmin <- ifelse(is.finite(cmin), cmin, 0)
  }  
  cal.max(img) <- cmax
  cal.min(img) <- cmin
  glmax(img) <- cmax
  glmin(img) <- cmin
  return(img)
}
#' @rdname cal_img
#' @export
cal_img <- function(img, infok=TRUE) {
  calibrateImage(img=img, infok=infok)
}

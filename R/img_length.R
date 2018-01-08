#' @title Gets Image Length in Each Dimension
#' 
#' @return Scalar numeric, one number, in mm or cm.
#' @param img Image object, any method with \code{voxdim} and \code{dim_}
#' @param units output unit, either cubic mm or cubic cm.
#' @description Multiplies the number of slices by the voxel resolution for
#' each direction.
#' @export
#' @examples 
#' nim <- nifti(array(rnorm(10^3), dim = c(5, 2, 100)),
#' pixdim = c(1, 0.5, 0.2, 1))
#' img_length(nim) 
img_length = function(img, units = c("mm", "cm")){
  units = match.arg(units)
  divisor = switch(units,
                   "mm" = 1,
                   "cm" = 1000
  )
  vd = voxdim(img) * dim_(img)[2:4] / divisor
  return(vd)
}

#' @title Gets Voxel Resolution
#' @return Scalar numeric, one number, in cubic mm or cubic cm (cc/mL).
#' @param img nifti object
#' @param units output unit, either cubic mm or cubic cm.
#' @description Grabs the 3 voxel dimensions and takes the product
#' @export
voxres = function(img, units = c("mm", "cm")){
  units = match.arg(units)
  divisor = switch(units,
    "mm" = 1,
    "cm" = 1000
  )
  prod(voxdim(img))/divisor
}


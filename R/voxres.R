#' @title Gets Voxel Resolution
#' @return Scalar numeric, one number, in cubic mm.
#' @param img nifti object
#' @description Grabs the 3 voxel dimensions and takes the product
#' @export
voxres = function(img){
  prod(voxdim(img))
}



#' @title Gets Voxel Dimensions
#' @return Vector of length 3
#' @param img nifti object
#' @description Grabs the pixdim and takes the correct elements
#' @export
#' @examples
#' nim <- nifti(array(rnorm(10^3), dim = c(5, 2, 100)),
#' pixdim = c(1, 0.5, 0.2, 1))
#' voxdim(nim)
#' 
voxdim = function(img){
  if (inherits(img, "niftiImage")) {
    return(RNifti::pixdim(img)[1:3])
  }
  pixdim(img)[2:4]
}


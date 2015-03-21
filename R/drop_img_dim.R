#' @title Drop Image Dimension
#' @return Object of class nifti
#' @param img nifti object
#' @description Drops a dimension of an image that has one-dimension and 
#' sets respective values to 0 in pixdim or 1 in dim
#' @export
drop_img_dim = function(img){
  dim_  = dim_(img)
  imgdim = dim(img)
  ####
  ndim = length(imgdim) + 1
  if (ndim +1 <= length(dim_)){
    dim_[seq(ndim+1, length(dim_))] = 1
  }
  pdim = pixdim(img)
  no.data = dim_ <= 1
  no.data[1] = FALSE
  ### subtract 1 for first observation
  ndim = sum(!no.data) - 1
  ### need the if statement in case 1x1x1 array (as is default)
  if (ndim > 0){
    pdim[no.data] = 0
    pixdim(img) = pdim
    dim_[1] = ndim
    dim_[no.data] = 1
    dim_(img) = dim_
    img@.Data = drop(img@.Data)
  } 
  img
}

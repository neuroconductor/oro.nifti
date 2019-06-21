#' @title Convert RNifti niftiImage to oro.nifti nifti object
#' @description Converts a niftiImage from RNifti to a 
#' nifti object from the oro.nifti package
#' @param image \code{niftiImage} object
#'
#' @return Object of class \code{\link{nifti}}
#' @export
#' @importFrom methods as slot<- slotNames
#' @importFrom RNifti niftiHeader
nii2oro = function(image) {
  hdr = niftiHeader(image)
  arr = as.array(image)
  arr = array(arr, dim = dim(arr))
  arr = as(arr, "array")
  
  
  stopifnot( !("dim_" %in% names(hdr)))
  hdr$dim_ = hdr$dim
  hdr$dim = NULL
  
  img = nifti(arr)
  
  #######################################
  # Get the names
  #######################################
  hdr_names = sort(names(hdr))
  img_names = sort(slotNames(img))
  
  #######################################
  # Stop if these have changed
  # This means one of the standards have changed
  #######################################
  wrong = setdiff(hdr_names, img_names)
  stopifnot(length(wrong) == 0)
  
  #######################################
  # See where they both work
  #######################################
  both = intersect(img_names, hdr_names)
  
  
  #######################################
  # 
  #######################################
  # add = setdiff(img_names, hdr_names)
  
  hdr$dim_info = ""
  for (islot in both) {
    slot(img, islot) = hdr[[islot]]
  }
  
  return(img)
}

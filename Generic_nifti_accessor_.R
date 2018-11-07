#' @rdname %ff%-methods
#' @aliases %.%,nifti-method
#' @export
setMethod("%.%", "nifti", function(object) object@"%ff%")

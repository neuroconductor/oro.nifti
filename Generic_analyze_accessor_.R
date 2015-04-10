#' @rdname %ff%-methods
#' @aliases %.%,anlz-method
#' @export
setMethod("%.%", "anlz", function(object) { object@"%ff%" })

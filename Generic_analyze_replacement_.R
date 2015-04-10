#' @rdname %ff%-methods
#' @aliases %.%<-,anlz-method
#' @export
setMethod("%.%<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "%ff%" %in% slotNames(object) ){
              object@"%ff%" <- value
            } else {
              warning("%ff% is not in slotNames of object")
            }
            return(object)
          })

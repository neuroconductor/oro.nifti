#' @name regular
#' @title Extract Image regular attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to regular 
#' @description Methods that act on the ``regular'' in the NIfTI/ANALYZE header.
#' @rdname regular-methods
#' @aliases regular-methods 
#' @aliases regular
#' @export
#'
#' @export
setGeneric("regular", function(object) standardGeneric("regular"))

#' @name regular
#' @rdname regular-methods
#' @aliases regular,nifti-method
#' @export
setMethod("regular", "nifti", function(object) { object@"regular" })

#' @name regular
#' @rdname regular-methods
#' @aliases regular,anlz-method
#' @export
setMethod("regular", "anlz", function(object) { object@"regular" })


#' @name regular
#' @rdname regular-methods
#' @aliases regular<- 
#' @export
setGeneric("regular<-", function(object, value) { standardGeneric("regular<-") })

#' @name regular
#' @rdname regular-methods
#' @aliases regular<-,nifti-method
#' @export
setMethod("regular<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( regular %in% slotNames(object) ){
              object@"regular" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("regular <-", value))               
            } else {
              warning("regular is not in slotNames of object")
            }                       
            return(object)
          })

#' @name regular
#' @rdname regular-methods
#' @aliases regular<-,anlz-method
#' @export
setMethod("regular<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( regular %in% slotNames(object) ){
              object@"regular" <- value
            } else {
              warning("regular is not in slotNames of object")
            }
            return(object)
          })


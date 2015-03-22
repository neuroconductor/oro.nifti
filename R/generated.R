#' @name generated
#' @title Extract Image generated attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to generated 
#' @description Methods that act on the ``generated'' in the NIfTI/ANALYZE header.
#' @rdname generated-methods
#' @aliases generated-methods 
#' @aliases generated
#' @export
#'
#' @export
setGeneric("generated", function(object) standardGeneric("generated"))

#' @name generated
#' @rdname generated-methods
#' @aliases generated,nifti-method
#' @export
setMethod("generated", "nifti", function(object) { object@"generated" })

#' @name generated
#' @rdname generated-methods
#' @aliases generated,anlz-method
#' @export
setMethod("generated", "anlz", function(object) { object@"generated" })


#' @name generated
#' @rdname generated-methods
#' @aliases generated<- 
#' @export
setGeneric("generated<-", function(object, value) { standardGeneric("generated<-") })

#' @name generated
#' @rdname generated-methods
#' @aliases generated<-,nifti-method
#' @export
setMethod("generated<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( generated %in% slotNames(object) ){
              object@"generated" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("generated <-", value))               
            } else {
              warning("generated is not in slotNames of object")
            }                       
            return(object)
          })

#' @name generated
#' @rdname generated-methods
#' @aliases generated<-,anlz-method
#' @export
setMethod("generated<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( generated %in% slotNames(object) ){
              object@"generated" <- value
            } else {
              warning("generated is not in slotNames of object")
            }
            return(object)
          })


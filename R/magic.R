#' @name magic
#' @title Extract Image magic attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to magic 
#' @description Methods that act on the ``magic'' in the NIfTI/ANALYZE header.
#' @rdname magic-methods
#' @aliases magic-methods 
#' @aliases magic
#' @export
#'
#' @export
setGeneric("magic", function(object) standardGeneric("magic"))

#' @name magic
#' @rdname magic-methods
#' @aliases magic,nifti-method
#' @export
setMethod("magic", "nifti", function(object) { object@"magic" })

#' @name magic
#' @rdname magic-methods
#' @aliases magic,anlz-method
#' @export
setMethod("magic", "anlz", function(object) { object@"magic" })


#' @name magic
#' @rdname magic-methods
#' @aliases magic<- 
#' @export
setGeneric("magic<-", function(object, value) { standardGeneric("magic<-") })

#' @name magic
#' @rdname magic-methods
#' @aliases magic<-,nifti-method
#' @export
setMethod("magic<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "magic" %in% slotNames(object) ){
              object@"magic" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("magic <-", value))               
            } else {
              warning("magic is not in slotNames of object")
            }                       
            return(object)
          })

#' @name magic
#' @rdname magic-methods
#' @aliases magic<-,anlz-method
#' @export
setMethod("magic<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "magic" %in% slotNames(object) ){
              object@"magic" <- value
            } else {
              warning("magic is not in slotNames of object")
            }
            return(object)
          })


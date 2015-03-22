#' @name srow_x
#' @title Extract Image srow_x attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to srow_x 
#' @description Methods that act on the ``srow_x'' in the NIfTI/ANALYZE header.
#' @rdname srow_x-methods
#' @aliases srow_x-methods 
#' @aliases srow_x
#' @export
#'
#' @export
setGeneric("srow_x", function(object) standardGeneric("srow_x"))

#' @name srow_x
#' @rdname srow_x-methods
#' @aliases srow_x,nifti-method
#' @export
setMethod("srow_x", "nifti", function(object) { object@"srow_x" })

#' @name srow_x
#' @rdname srow_x-methods
#' @aliases srow_x,anlz-method
#' @export
setMethod("srow_x", "anlz", function(object) { object@"srow_x" })


#' @name srow_x
#' @rdname srow_x-methods
#' @aliases srow_x<- 
#' @export
setGeneric("srow_x<-", function(object, value) { standardGeneric("srow_x<-") })

#' @name srow_x
#' @rdname srow_x-methods
#' @aliases srow_x<-,nifti-method
#' @export
setMethod("srow_x<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "srow_x" %in% slotNames(object) ){
              object@"srow_x" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("srow_x <-", value))               
            } else {
              warning("srow_x is not in slotNames of object")
            }                       
            return(object)
          })

#' @name srow_x
#' @rdname srow_x-methods
#' @aliases srow_x<-,anlz-method
#' @export
setMethod("srow_x<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "srow_x" %in% slotNames(object) ){
              object@"srow_x" <- value
            } else {
              warning("srow_x is not in slotNames of object")
            }
            return(object)
          })


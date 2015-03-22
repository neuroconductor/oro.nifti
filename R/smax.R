#' @name smax
#' @title Extract Image smax attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to smax 
#' @description Methods that act on the ``smax'' in the NIfTI/ANALYZE header.
#' @rdname smax-methods
#' @aliases smax-methods 
#' @aliases smax
#' @export
#'
#' @export
setGeneric("smax", function(object) standardGeneric("smax"))

#' @name smax
#' @rdname smax-methods
#' @aliases smax,nifti-method
#' @export
setMethod("smax", "nifti", function(object) { object@"smax" })

#' @name smax
#' @rdname smax-methods
#' @aliases smax,anlz-method
#' @export
setMethod("smax", "anlz", function(object) { object@"smax" })


#' @name smax
#' @rdname smax-methods
#' @aliases smax<- 
#' @export
setGeneric("smax<-", function(object, value) { standardGeneric("smax<-") })

#' @name smax
#' @rdname smax-methods
#' @aliases smax<-,nifti-method
#' @export
setMethod("smax<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "smax" %in% slotNames(object) ){
              object@"smax" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("smax <-", value))               
            } else {
              warning("smax is not in slotNames of object")
            }                       
            return(object)
          })

#' @name smax
#' @rdname smax-methods
#' @aliases smax<-,anlz-method
#' @export
setMethod("smax<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "smax" %in% slotNames(object) ){
              object@"smax" <- value
            } else {
              warning("smax is not in slotNames of object")
            }
            return(object)
          })


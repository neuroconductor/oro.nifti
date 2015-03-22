#' @name slice_start
#' @title Extract Image slice_start attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to slice_start 
#' @description Methods that act on the ``slice_start'' in the NIfTI/ANALYZE header.
#' @rdname slice_start-methods
#' @aliases slice_start-methods 
#' @aliases slice_start
#' @export
#'
#' @export
setGeneric("slice_start", function(object) standardGeneric("slice_start"))

#' @name slice_start
#' @rdname slice_start-methods
#' @aliases slice_start,nifti-method
#' @export
setMethod("slice_start", "nifti", function(object) { object@"slice_start" })

#' @name slice_start
#' @rdname slice_start-methods
#' @aliases slice_start,anlz-method
#' @export
setMethod("slice_start", "anlz", function(object) { object@"slice_start" })


#' @name slice_start
#' @rdname slice_start-methods
#' @aliases slice_start<- 
#' @export
setGeneric("slice_start<-", function(object, value) { standardGeneric("slice_start<-") })

#' @name slice_start
#' @rdname slice_start-methods
#' @aliases slice_start<-,nifti-method
#' @export
setMethod("slice_start<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( slice_start %in% slotNames(object) ){
              object@"slice_start" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("slice_start <-", value))               
            } else {
              warning("slice_start is not in slotNames of object")
            }                       
            return(object)
          })

#' @name slice_start
#' @rdname slice_start-methods
#' @aliases slice_start<-,anlz-method
#' @export
setMethod("slice_start<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( slice_start %in% slotNames(object) ){
              object@"slice_start" <- value
            } else {
              warning("slice_start is not in slotNames of object")
            }
            return(object)
          })


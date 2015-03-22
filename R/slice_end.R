#' @name slice_end-methods
#' @title Extract Image slice_end attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to slice_end 
#' @description Methods that act on the ``slice_end'' in the NIfTI/ANALYZE header.
#' @rdname slice_end-methods
#' @aliases slice_end-methods 
#' @aliases slice_end
#' @export
#'
#' @export
setGeneric("slice_end", function(object) standardGeneric("slice_end"))

#' @name slice_end
#' @rdname slice_end-methods
#' @aliases slice_end,nifti-method
#' @export
setMethod("slice_end", "nifti", function(object) { object@"slice_end" })

#' @name slice_end
#' @rdname slice_end-methods
#' @aliases slice_end,anlz-method
#' @export
setMethod("slice_end", "anlz", function(object) { object@"slice_end" })


#' @name slice_end
#' @rdname slice_end-methods
#' @aliases slice_end<- 
#' @export
setGeneric("slice_end<-", function(object, value) { standardGeneric("slice_end<-") })

#' @name slice_end
#' @rdname slice_end-methods
#' @aliases slice_end<-,nifti-method
#' @export
setMethod("slice_end<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "slice_end" %in% slotNames(object) ){
              object@"slice_end" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("slice_end <-", value))               
            } else {
              warning("slice_end is not in slotNames of object")
            }                       
            return(object)
          })

#' @name slice_end
#' @rdname slice_end-methods
#' @aliases slice_end<-,anlz-method
#' @export
setMethod("slice_end<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "slice_end" %in% slotNames(object) ){
              object@"slice_end" <- value
            } else {
              warning("slice_end is not in slotNames of object")
            }
            return(object)
          })


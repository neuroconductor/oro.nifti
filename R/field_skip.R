#' @name field_skip
#' @title Extract Image field_skip attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to field_skip 
#' @description Methods that act on the ``field_skip'' in the NIfTI/ANALYZE header.
#' @rdname field_skip-methods
#' @aliases field_skip-methods 
#' @aliases field_skip
#' @export
#'
#' @export
setGeneric("field_skip", function(object) standardGeneric("field_skip"))

#' @name field_skip
#' @rdname field_skip-methods
#' @aliases field_skip,nifti-method
#' @export
setMethod("field_skip", "nifti", function(object) { object@"field_skip" })

#' @name field_skip
#' @rdname field_skip-methods
#' @aliases field_skip,anlz-method
#' @export
setMethod("field_skip", "anlz", function(object) { object@"field_skip" })


#' @name field_skip
#' @rdname field_skip-methods
#' @aliases field_skip<- 
#' @export
setGeneric("field_skip<-", function(object, value) { standardGeneric("field_skip<-") })

#' @name field_skip
#' @rdname field_skip-methods
#' @aliases field_skip<-,nifti-method
#' @export
setMethod("field_skip<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "field_skip" %in% slotNames(object) ){
              object@"field_skip" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("field_skip <-", value))               
            } else {
              warning("field_skip is not in slotNames of object")
            }                       
            return(object)
          })

#' @name field_skip
#' @rdname field_skip-methods
#' @aliases field_skip<-,anlz-method
#' @export
setMethod("field_skip<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "field_skip" %in% slotNames(object) ){
              object@"field_skip" <- value
            } else {
              warning("field_skip is not in slotNames of object")
            }
            return(object)
          })


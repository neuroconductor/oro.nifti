#' @name intent_p1
#' @title Extract Image intent_p1 attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to intent_p1 
#' @description Methods that act on the ``intent_p1'' in the NIfTI/ANALYZE header.
#' @rdname intent_p1-methods
#' @aliases intent_p1-methods 
#' @aliases intent_p1
#' @export
#'
#' @export
setGeneric("intent_p1", function(object) standardGeneric("intent_p1"))

#' @name intent_p1
#' @rdname intent_p1-methods
#' @aliases intent_p1,nifti-method
#' @export
setMethod("intent_p1", "nifti", function(object) { object@"intent_p1" })

#' @name intent_p1
#' @rdname intent_p1-methods
#' @aliases intent_p1,anlz-method
#' @export
setMethod("intent_p1", "anlz", function(object) { object@"intent_p1" })


#' @name intent_p1
#' @rdname intent_p1-methods
#' @aliases intent_p1<- 
#' @export
setGeneric("intent_p1<-", function(object, value) { standardGeneric("intent_p1<-") })

#' @name intent_p1
#' @rdname intent_p1-methods
#' @aliases intent_p1<-,nifti-method
#' @export
setMethod("intent_p1<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( intent_p1 %in% slotNames(object) ){
              object@"intent_p1" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("intent_p1 <-", value))               
            } else {
              warning("intent_p1 is not in slotNames of object")
            }                       
            return(object)
          })

#' @name intent_p1
#' @rdname intent_p1-methods
#' @aliases intent_p1<-,anlz-method
#' @export
setMethod("intent_p1<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( intent_p1 %in% slotNames(object) ){
              object@"intent_p1" <- value
            } else {
              warning("intent_p1 is not in slotNames of object")
            }
            return(object)
          })


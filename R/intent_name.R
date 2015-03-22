#' @name intent_name
#' @title Extract Image intent_name attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to intent_name 
#' @description Methods that act on the ``intent_name'' in the NIfTI/ANALYZE header.
#' @rdname intent_name-methods
#' @aliases intent_name-methods 
#' @aliases intent_name
#' @export
#'
#' @export
setGeneric("intent_name", function(object) standardGeneric("intent_name"))

#' @name intent_name
#' @rdname intent_name-methods
#' @aliases intent_name,nifti-method
#' @export
setMethod("intent_name", "nifti", function(object) { object@"intent_name" })

#' @name intent_name
#' @rdname intent_name-methods
#' @aliases intent_name,anlz-method
#' @export
setMethod("intent_name", "anlz", function(object) { object@"intent_name" })


#' @name intent_name
#' @rdname intent_name-methods
#' @aliases intent_name<- 
#' @export
setGeneric("intent_name<-", function(object, value) { standardGeneric("intent_name<-") })

#' @name intent_name
#' @rdname intent_name-methods
#' @aliases intent_name<-,nifti-method
#' @export
setMethod("intent_name<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "intent_name" %in% slotNames(object) ){
              object@"intent_name" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("intent_name <-", value))               
            } else {
              warning("intent_name is not in slotNames of object")
            }                       
            return(object)
          })

#' @name intent_name
#' @rdname intent_name-methods
#' @aliases intent_name<-,anlz-method
#' @export
setMethod("intent_name<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "intent_name" %in% slotNames(object) ){
              object@"intent_name" <- value
            } else {
              warning("intent_name is not in slotNames of object")
            }
            return(object)
          })


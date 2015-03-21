#' @name intent_code
#' @title Extract NIfTI 3D Image intent_code attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to intent_code 
#' @description Methods that act on the ``intent_code'' in the NIfTI header.
#' @rdname intent_code-methods
#' @aliases intent_code-methods 
#' @aliases intent_code
#' @export
#'
#' @export
setGeneric("intent_code", function(object) standardGeneric("intent_code"))

#' @name intent_code
#' @rdname intent_code-methods
#' @aliases intent_code,nifti-method
#' @export
setMethod("intent_code", "nifti", function(object) { object@"intent_code" })

#' @name intent_code
#' @rdname intent_code-methods
#' @aliases intent_code,anlz-method
#' @export
setMethod("intent_code", "anlz", function(object) { object@"intent_code" })


#' @name intent_code
#' @rdname intent_code-methods
#' @aliases intent_code<- 
#' @export
setGeneric("intent_code<-", function(object, value) { standardGeneric("intent_code<-") })

#' @name intent_code
#' @rdname intent_code-methods
#' @aliases intent_code<-,nifti-method
#' @export
setMethod("intent_code<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"intent_code" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("intent_code <-", value))            
            return(object)
          })

#' @name intent_code
#' @rdname intent_code-methods
#' @aliases intent_code<-,anlz-method
#' @export
setMethod("intent_code<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"intent_code" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("intent_code <-", value))            
            return(object)
          })


#' @name intent_p3
#' @title Extract NIfTI 3D Image intent_p3 attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to intent_p3 
#' @description Methods that act on the ``intent_p3'' in the NIfTI header.
#' @rdname intent_p3-methods
#' @aliases intent_p3-methods 
#' @aliases intent_p3
#' @export
#'
#' @export
setGeneric("intent_p3", function(object) standardGeneric("intent_p3"))

#' @name intent_p3
#' @rdname intent_p3-methods
#' @aliases intent_p3,nifti-method
#' @export
setMethod("intent_p3", "nifti", function(object) { object@"intent_p3" })

#' @name intent_p3
#' @rdname intent_p3-methods
#' @aliases intent_p3,anlz-method
#' @export
setMethod("intent_p3", "anlz", function(object) { object@"intent_p3" })


#' @name intent_p3
#' @rdname intent_p3-methods
#' @aliases intent_p3<- 
#' @export
setGeneric("intent_p3<-", function(object, value) { standardGeneric("intent_p3<-") })

#' @name intent_p3
#' @rdname intent_p3-methods
#' @aliases intent_p3<-,nifti-method
#' @export
setMethod("intent_p3<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"intent_p3" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("intent_p3 <-", value))            
            return(object)
          })

#' @name intent_p3
#' @rdname intent_p3-methods
#' @aliases intent_p3<-,anlz-method
#' @export
setMethod("intent_p3<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"intent_p3" <- value         
            return(object)
          })


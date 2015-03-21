#' @name intent_p2
#' @title Extract NIfTI 3D Image intent_p2 attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to intent_p2 
#' @description Methods that act on the ``intent_p2'' in the NIfTI header.
#' @rdname intent_p2-methods
#' @aliases intent_p2-methods 
#' @aliases intent_p2
#' @export
#'
#' @export
setGeneric("intent_p2", function(object) standardGeneric("intent_p2"))

#' @name intent_p2
#' @rdname intent_p2-methods
#' @aliases intent_p2,nifti-method
#' @export
setMethod("intent_p2", "nifti", function(object) { object@"intent_p2" })

#' @name intent_p2
#' @rdname intent_p2-methods
#' @aliases intent_p2,anlz-method
#' @export
setMethod("intent_p2", "anlz", function(object) { object@"intent_p2" })


#' @name intent_p2
#' @rdname intent_p2-methods
#' @aliases intent_p2<- 
#' @export
setGeneric("intent_p2<-", function(object, value) { standardGeneric("intent_p2<-") })

#' @name intent_p2
#' @rdname intent_p2-methods
#' @aliases intent_p2<-,nifti-method
#' @export
setMethod("intent_p2<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"intent_p2" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("intent_p2 <-", value))            
            return(object)
          })

#' @name intent_p2
#' @rdname intent_p2-methods
#' @aliases intent_p2<-,anlz-method
#' @export
setMethod("intent_p2<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"intent_p2" <- value         
            return(object)
          })


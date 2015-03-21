#' @name qoffset_x
#' @title Extract NIfTI 3D Image qoffset_x attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to qoffset_x 
#' @description Methods that act on the ``qoffset_x'' in the NIfTI header.
#' @rdname qoffset_x-methods
#' @aliases qoffset_x-methods 
#' @aliases qoffset_x
#' @export
#'
#' @export
setGeneric("qoffset_x", function(object) standardGeneric("qoffset_x"))

#' @name qoffset_x
#' @rdname qoffset_x-methods
#' @aliases qoffset_x,nifti-method
#' @export
setMethod("qoffset_x", "nifti", function(object) { object@"qoffset_x" })

#' @name qoffset_x
#' @rdname qoffset_x-methods
#' @aliases qoffset_x,anlz-method
#' @export
setMethod("qoffset_x", "anlz", function(object) { object@"qoffset_x" })


#' @name qoffset_x
#' @rdname qoffset_x-methods
#' @aliases qoffset_x<- 
#' @export
setGeneric("qoffset_x<-", function(object, value) { standardGeneric("qoffset_x<-") })

#' @name qoffset_x
#' @rdname qoffset_x-methods
#' @aliases qoffset_x<-,nifti-method
#' @export
setMethod("qoffset_x<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"qoffset_x" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("qoffset_x <-", value))            
            return(object)
          })

#' @name qoffset_x
#' @rdname qoffset_x-methods
#' @aliases qoffset_x<-,anlz-method
#' @export
setMethod("qoffset_x<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"qoffset_x" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("qoffset_x <-", value))            
            return(object)
          })


#' @name qoffset_y
#' @title Extract NIfTI 3D Image qoffset_y attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to qoffset_y 
#' @description Methods that act on the ``qoffset_y'' in the NIfTI header.
#' @rdname qoffset_y-methods
#' @aliases qoffset_y-methods 
#' @aliases qoffset_y
#' @export
#'
#' @export
setGeneric("qoffset_y", function(object) standardGeneric("qoffset_y"))

#' @name qoffset_y
#' @rdname qoffset_y-methods
#' @aliases qoffset_y,nifti-method
#' @export
setMethod("qoffset_y", "nifti", function(object) { object@"qoffset_y" })

#' @name qoffset_y
#' @rdname qoffset_y-methods
#' @aliases qoffset_y,anlz-method
#' @export
setMethod("qoffset_y", "anlz", function(object) { object@"qoffset_y" })


#' @name qoffset_y
#' @rdname qoffset_y-methods
#' @aliases qoffset_y<- 
#' @export
setGeneric("qoffset_y<-", function(object, value) { standardGeneric("qoffset_y<-") })

#' @name qoffset_y
#' @rdname qoffset_y-methods
#' @aliases qoffset_y<-,nifti-method
#' @export
setMethod("qoffset_y<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"qoffset_y" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("qoffset_y <-", value))            
            return(object)
          })

#' @name qoffset_y
#' @rdname qoffset_y-methods
#' @aliases qoffset_y<-,anlz-method
#' @export
setMethod("qoffset_y<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"qoffset_y" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("qoffset_y <-", value))            
            return(object)
          })


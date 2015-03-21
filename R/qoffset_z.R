#' @name qoffset_z
#' @title Extract NIfTI 3D Image qoffset_z attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to qoffset_z 
#' @description Methods that act on the ``qoffset_z'' in the NIfTI header.
#' @rdname qoffset_z-methods
#' @aliases qoffset_z-methods 
#' @aliases qoffset_z
#' @export
#'
#' @export
setGeneric("qoffset_z", function(object) standardGeneric("qoffset_z"))

#' @name qoffset_z
#' @rdname qoffset_z-methods
#' @aliases qoffset_z,nifti-method
#' @export
setMethod("qoffset_z", "nifti", function(object) { object@"qoffset_z" })

#' @name qoffset_z
#' @rdname qoffset_z-methods
#' @aliases qoffset_z,anlz-method
#' @export
setMethod("qoffset_z", "anlz", function(object) { object@"qoffset_z" })


#' @name qoffset_z
#' @rdname qoffset_z-methods
#' @aliases qoffset_z<- 
#' @export
setGeneric("qoffset_z<-", function(object, value) { standardGeneric("qoffset_z<-") })

#' @name qoffset_z
#' @rdname qoffset_z-methods
#' @aliases qoffset_z<-,nifti-method
#' @export
setMethod("qoffset_z<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"qoffset_z" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("qoffset_z <-", value))            
            return(object)
          })

#' @name qoffset_z
#' @rdname qoffset_z-methods
#' @aliases qoffset_z<-,anlz-method
#' @export
setMethod("qoffset_z<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"qoffset_z" <- value         
            return(object)
          })


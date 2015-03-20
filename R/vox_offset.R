#' @name vox_offset
#' @title Extract NIfTI 3D Image vox_offset attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to vox_offset 
#' @description Methods that act on the ``vox_offset'' in the NIfTI header.
#' @rdname vox_offset-methods
#' @aliases vox_offset-methods 
#' @aliases vox_offset
#' @export
#'
#' @export
setGeneric("vox_offset", function(object) standardGeneric("vox_offset"))

#' @name vox_offset
#' @rdname vox_offset-methods
#' @aliases vox_offset,nifti-method
#' @export
setMethod("vox_offset", "nifti", function(object) { object@"vox_offset" })

#' @name vox_offset
#' @rdname vox_offset-methods
#' @aliases vox_offset,anlz-method
#' @export
setMethod("vox_offset", "anlz", function(object) { object@"vox_offset" })


#' @name vox_offset
#' @rdname vox_offset-methods
#' @aliases vox_offset<- 
#' @export
setGeneric("vox_offset<-", function(object, value) { standardGeneric("vox_offset<-") })

#' @name vox_offset
#' @rdname vox_offset-methods
#' @aliases vox_offset<-,nifti-method
#' @export
setMethod("vox_offset<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"vox_offset" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("vox_offset <-", value))            
            return(object)
          })

#' @name vox_offset
#' @rdname vox_offset-methods
#' @aliases vox_offset<-,anlz-method
#' @export
setMethod("vox_offset<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"vox_offset" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("vox_offset <-", value))            
            return(object)
          })


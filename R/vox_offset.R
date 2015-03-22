#' @name vox_offset
#' @title Extract Image vox_offset attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to vox_offset 
#' @description Methods that act on the ``vox_offset'' in the NIfTI/ANALYZE header.
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
            if ( vox_offset %in% slotNames(object) ){
              object@"vox_offset" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("vox_offset <-", value))               
            } else {
              warning("vox_offset is not in slotNames of object")
            }                       
            return(object)
          })

#' @name vox_offset
#' @rdname vox_offset-methods
#' @aliases vox_offset<-,anlz-method
#' @export
setMethod("vox_offset<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( vox_offset %in% slotNames(object) ){
              object@"vox_offset" <- value
            } else {
              warning("vox_offset is not in slotNames of object")
            }
            return(object)
          })


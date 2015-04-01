#' @name vox_units-methods
#' @title Extract Image vox_units attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to vox_units 
#' @description Methods that act on the ``vox_units'' in the NIfTI/ANALYZE header.
#' @rdname vox_units-methods
#' @aliases vox_units-methods 
#' @aliases vox_units
#' @export
#'
#' @export
setGeneric("vox_units", function(object) standardGeneric("vox_units"))

#' @name vox_units
#' @rdname vox_units-methods
#' @aliases vox_units,nifti-method
#' @export
setMethod("vox_units", "nifti", function(object) { object@"vox_units" })

#' @name vox_units
#' @rdname vox_units-methods
#' @aliases vox_units,anlz-method
#' @export
setMethod("vox_units", "anlz", function(object) { object@"vox_units" })


#' @name vox_units
#' @rdname vox_units-methods
#' @aliases vox_units<- 
#' @export
setGeneric("vox_units<-", function(object, value) { standardGeneric("vox_units<-") })

#' @name vox_units
#' @rdname vox_units-methods
#' @aliases vox_units<-,nifti-method
#' @export
setMethod("vox_units<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "vox_units" %in% slotNames(object) ){
              object@"vox_units" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("vox_units <-", value))               
            } else {
              warning("vox_units is not in slotNames of object")
            }                       
            return(object)
          })

#' @name vox_units
#' @rdname vox_units-methods
#' @aliases vox_units<-,anlz-method
#' @export
setMethod("vox_units<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "vox_units" %in% slotNames(object) ){
              object@"vox_units" <- value
            } else {
              warning("vox_units is not in slotNames of object")
            }
            return(object)
          })


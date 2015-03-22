#' @name srow_z-methods
#' @title Extract Image srow_z attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to srow_z 
#' @description Methods that act on the ``srow_z'' in the NIfTI/ANALYZE header.
#' @rdname srow_z-methods
#' @aliases srow_z-methods 
#' @aliases srow_z
#' @export
#'
#' @export
setGeneric("srow_z", function(object) standardGeneric("srow_z"))

#' @name srow_z
#' @rdname srow_z-methods
#' @aliases srow_z,nifti-method
#' @export
setMethod("srow_z", "nifti", function(object) { object@"srow_z" })

#' @name srow_z
#' @rdname srow_z-methods
#' @aliases srow_z,anlz-method
#' @export
setMethod("srow_z", "anlz", function(object) { object@"srow_z" })


#' @name srow_z
#' @rdname srow_z-methods
#' @aliases srow_z<- 
#' @export
setGeneric("srow_z<-", function(object, value) { standardGeneric("srow_z<-") })

#' @name srow_z
#' @rdname srow_z-methods
#' @aliases srow_z<-,nifti-method
#' @export
setMethod("srow_z<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "srow_z" %in% slotNames(object) ){
              object@"srow_z" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("srow_z <-", value))               
            } else {
              warning("srow_z is not in slotNames of object")
            }                       
            return(object)
          })

#' @name srow_z
#' @rdname srow_z-methods
#' @aliases srow_z<-,anlz-method
#' @export
setMethod("srow_z<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "srow_z" %in% slotNames(object) ){
              object@"srow_z" <- value
            } else {
              warning("srow_z is not in slotNames of object")
            }
            return(object)
          })


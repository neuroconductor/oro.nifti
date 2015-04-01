#' @name srow_y-methods
#' @title Extract Image srow_y attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to srow_y 
#' @description Methods that act on the ``srow_y'' in the NIfTI/ANALYZE header.
#' @rdname srow_y-methods
#' @aliases srow_y-methods 
#' @aliases srow_y
#' @export
#'
#' @export
setGeneric("srow_y", function(object) standardGeneric("srow_y"))

#' @name srow_y
#' @rdname srow_y-methods
#' @aliases srow_y,nifti-method
#' @export
setMethod("srow_y", "nifti", function(object) { object@"srow_y" })

#' @name srow_y
#' @rdname srow_y-methods
#' @aliases srow_y,anlz-method
#' @export
setMethod("srow_y", "anlz", function(object) { object@"srow_y" })


#' @name srow_y
#' @rdname srow_y-methods
#' @aliases srow_y<- 
#' @export
setGeneric("srow_y<-", function(object, value) { standardGeneric("srow_y<-") })

#' @name srow_y
#' @rdname srow_y-methods
#' @aliases srow_y<-,nifti-method
#' @export
setMethod("srow_y<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "srow_y" %in% slotNames(object) ){
              object@"srow_y" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("srow_y <-", value))               
            } else {
              warning("srow_y is not in slotNames of object")
            }                       
            return(object)
          })

#' @name srow_y
#' @rdname srow_y-methods
#' @aliases srow_y<-,anlz-method
#' @export
setMethod("srow_y<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "srow_y" %in% slotNames(object) ){
              object@"srow_y" <- value
            } else {
              warning("srow_y is not in slotNames of object")
            }
            return(object)
          })


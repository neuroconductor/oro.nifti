#' @name xyzt_units-methods
#' @title Extract Image xyzt_units attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to xyzt_units 
#' @description Methods that act on the ``xyzt_units'' in the NIfTI/ANALYZE header.
#' @rdname xyzt_units-methods
#' @aliases xyzt_units-methods 
#' @aliases xyzt_units
#' @export
#'
#' @export
setGeneric("xyzt_units", function(object) standardGeneric("xyzt_units"))

#' @name xyzt_units
#' @rdname xyzt_units-methods
#' @aliases xyzt_units,nifti-method
#' @export
setMethod("xyzt_units", "nifti", function(object) { object@"xyzt_units" })

#' @name xyzt_units
#' @rdname xyzt_units-methods
#' @aliases xyzt_units,anlz-method
#' @export
setMethod("xyzt_units", "anlz", function(object) { object@"xyzt_units" })


#' @name xyzt_units
#' @rdname xyzt_units-methods
#' @aliases xyzt_units<- 
#' @export
setGeneric("xyzt_units<-", function(object, value) { standardGeneric("xyzt_units<-") })

#' @name xyzt_units
#' @rdname xyzt_units-methods
#' @aliases xyzt_units<-,nifti-method
#' @export
setMethod("xyzt_units<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "xyzt_units" %in% slotNames(object) ){
              object@"xyzt_units" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("xyzt_units <-", value))               
            } else {
              warning("xyzt_units is not in slotNames of object")
            }                       
            return(object)
          })

#' @name xyzt_units
#' @rdname xyzt_units-methods
#' @aliases xyzt_units<-,anlz-method
#' @export
setMethod("xyzt_units<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "xyzt_units" %in% slotNames(object) ){
              object@"xyzt_units" <- value
            } else {
              warning("xyzt_units is not in slotNames of object")
            }
            return(object)
          })


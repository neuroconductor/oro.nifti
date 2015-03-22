#' @name cal_units
#' @title Extract Image cal_units attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to cal_units 
#' @description Methods that act on the ``cal_units'' in the NIfTI/ANALYZE header.
#' @rdname cal_units-methods
#' @aliases cal_units-methods 
#' @aliases cal_units
#' @export
#'
#' @export
setGeneric("cal_units", function(object) standardGeneric("cal_units"))

#' @name cal_units
#' @rdname cal_units-methods
#' @aliases cal_units,nifti-method
#' @export
setMethod("cal_units", "nifti", function(object) { object@"cal_units" })

#' @name cal_units
#' @rdname cal_units-methods
#' @aliases cal_units,anlz-method
#' @export
setMethod("cal_units", "anlz", function(object) { object@"cal_units" })


#' @name cal_units
#' @rdname cal_units-methods
#' @aliases cal_units<- 
#' @export
setGeneric("cal_units<-", function(object, value) { standardGeneric("cal_units<-") })

#' @name cal_units
#' @rdname cal_units-methods
#' @aliases cal_units<-,nifti-method
#' @export
setMethod("cal_units<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( cal_units %in% slotNames(object) ){
              object@"cal_units" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("cal_units <-", value))               
            } else {
              warning("cal_units is not in slotNames of object")
            }                       
            return(object)
          })

#' @name cal_units
#' @rdname cal_units-methods
#' @aliases cal_units<-,anlz-method
#' @export
setMethod("cal_units<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( cal_units %in% slotNames(object) ){
              object@"cal_units" <- value
            } else {
              warning("cal_units is not in slotNames of object")
            }
            return(object)
          })


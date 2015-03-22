#' @name exp_date
#' @title Extract Image exp_date attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to exp_date 
#' @description Methods that act on the ``exp_date'' in the NIfTI/ANALYZE header.
#' @rdname exp_date-methods
#' @aliases exp_date-methods 
#' @aliases exp_date
#' @export
#'
#' @export
setGeneric("exp_date", function(object) standardGeneric("exp_date"))

#' @name exp_date
#' @rdname exp_date-methods
#' @aliases exp_date,nifti-method
#' @export
setMethod("exp_date", "nifti", function(object) { object@"exp_date" })

#' @name exp_date
#' @rdname exp_date-methods
#' @aliases exp_date,anlz-method
#' @export
setMethod("exp_date", "anlz", function(object) { object@"exp_date" })


#' @name exp_date
#' @rdname exp_date-methods
#' @aliases exp_date<- 
#' @export
setGeneric("exp_date<-", function(object, value) { standardGeneric("exp_date<-") })

#' @name exp_date
#' @rdname exp_date-methods
#' @aliases exp_date<-,nifti-method
#' @export
setMethod("exp_date<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "exp_date" %in% slotNames(object) ){
              object@"exp_date" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("exp_date <-", value))               
            } else {
              warning("exp_date is not in slotNames of object")
            }                       
            return(object)
          })

#' @name exp_date
#' @rdname exp_date-methods
#' @aliases exp_date<-,anlz-method
#' @export
setMethod("exp_date<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "exp_date" %in% slotNames(object) ){
              object@"exp_date" <- value
            } else {
              warning("exp_date is not in slotNames of object")
            }
            return(object)
          })


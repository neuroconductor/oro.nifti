#' @name exp_time-methods
#' @title Extract Image exp_time attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to exp_time 
#' @description Methods that act on the ``exp_time'' in the NIfTI/ANALYZE header.
#' @rdname exp_time-methods
#' @aliases exp_time-methods 
#' @aliases exp_time
#' @export
#'
#' @export
setGeneric("exp_time", function(object) standardGeneric("exp_time"))

#' @name exp_time
#' @rdname exp_time-methods
#' @aliases exp_time,nifti-method
#' @export
setMethod("exp_time", "nifti", function(object) { object@"exp_time" })

#' @name exp_time
#' @rdname exp_time-methods
#' @aliases exp_time,anlz-method
#' @export
setMethod("exp_time", "anlz", function(object) { object@"exp_time" })


#' @name exp_time
#' @rdname exp_time-methods
#' @aliases exp_time<- 
#' @export
setGeneric("exp_time<-", function(object, value) { standardGeneric("exp_time<-") })

#' @name exp_time
#' @rdname exp_time-methods
#' @aliases exp_time<-,nifti-method
#' @export
setMethod("exp_time<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "exp_time" %in% slotNames(object) ){
              object@"exp_time" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("exp_time <-", value))               
            } else {
              warning("exp_time is not in slotNames of object")
            }                       
            return(object)
          })

#' @name exp_time
#' @rdname exp_time-methods
#' @aliases exp_time<-,anlz-method
#' @export
setMethod("exp_time<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "exp_time" %in% slotNames(object) ){
              object@"exp_time" <- value
            } else {
              warning("exp_time is not in slotNames of object")
            }
            return(object)
          })


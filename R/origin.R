#' @name origin
#' @title Extract Image origin attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to origin 
#' @description Methods that act on the ``origin'' in the NIfTI/ANALYZE header.
#' @rdname origin-methods
#' @aliases origin-methods 
#' @aliases origin
#' @export
#'
#' @export
setGeneric("origin", function(object) standardGeneric("origin"))

#' @name origin
#' @rdname origin-methods
#' @aliases origin,nifti-method
#' @export
setMethod("origin", "nifti", function(object) { object@"origin" })

#' @name origin
#' @rdname origin-methods
#' @aliases origin,anlz-method
#' @export
setMethod("origin", "anlz", function(object) { object@"origin" })


#' @name origin
#' @rdname origin-methods
#' @aliases origin<- 
#' @export
setGeneric("origin<-", function(object, value) { standardGeneric("origin<-") })

#' @name origin
#' @rdname origin-methods
#' @aliases origin<-,nifti-method
#' @export
setMethod("origin<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( origin %in% slotNames(object) ){
              object@"origin" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("origin <-", value))               
            } else {
              warning("origin is not in slotNames of object")
            }                       
            return(object)
          })

#' @name origin
#' @rdname origin-methods
#' @aliases origin<-,anlz-method
#' @export
setMethod("origin<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( origin %in% slotNames(object) ){
              object@"origin" <- value
            } else {
              warning("origin is not in slotNames of object")
            }
            return(object)
          })


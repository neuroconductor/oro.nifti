#' @name omax-methods
#' @title Extract Image omax attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to omax 
#' @description Methods that act on the ``omax'' in the NIfTI/ANALYZE header.
#' @rdname omax-methods
#' @aliases omax-methods 
#' @aliases omax
#' @export
#'
#' @export
setGeneric("omax", function(object) standardGeneric("omax"))

#' @name omax
#' @rdname omax-methods
#' @aliases omax,nifti-method
#' @export
setMethod("omax", "nifti", function(object) { object@"omax" })

#' @name omax
#' @rdname omax-methods
#' @aliases omax,anlz-method
#' @export
setMethod("omax", "anlz", function(object) { object@"omax" })


#' @name omax
#' @rdname omax-methods
#' @aliases omax<- 
#' @export
setGeneric("omax<-", function(object, value) { standardGeneric("omax<-") })

#' @name omax
#' @rdname omax-methods
#' @aliases omax<-,nifti-method
#' @export
setMethod("omax<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "omax" %in% slotNames(object) ){
              object@"omax" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("omax <-", value))               
            } else {
              warning("omax is not in slotNames of object")
            }                       
            return(object)
          })

#' @name omax
#' @rdname omax-methods
#' @aliases omax<-,anlz-method
#' @export
setMethod("omax<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "omax" %in% slotNames(object) ){
              object@"omax" <- value
            } else {
              warning("omax is not in slotNames of object")
            }
            return(object)
          })


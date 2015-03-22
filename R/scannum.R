#' @name scannum
#' @title Extract Image scannum attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to scannum 
#' @description Methods that act on the ``scannum'' in the NIfTI/ANALYZE header.
#' @rdname scannum-methods
#' @aliases scannum-methods 
#' @aliases scannum
#' @export
#'
#' @export
setGeneric("scannum", function(object) standardGeneric("scannum"))

#' @name scannum
#' @rdname scannum-methods
#' @aliases scannum,nifti-method
#' @export
setMethod("scannum", "nifti", function(object) { object@"scannum" })

#' @name scannum
#' @rdname scannum-methods
#' @aliases scannum,anlz-method
#' @export
setMethod("scannum", "anlz", function(object) { object@"scannum" })


#' @name scannum
#' @rdname scannum-methods
#' @aliases scannum<- 
#' @export
setGeneric("scannum<-", function(object, value) { standardGeneric("scannum<-") })

#' @name scannum
#' @rdname scannum-methods
#' @aliases scannum<-,nifti-method
#' @export
setMethod("scannum<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "scannum" %in% slotNames(object) ){
              object@"scannum" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("scannum <-", value))               
            } else {
              warning("scannum is not in slotNames of object")
            }                       
            return(object)
          })

#' @name scannum
#' @rdname scannum-methods
#' @aliases scannum<-,anlz-method
#' @export
setMethod("scannum<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "scannum" %in% slotNames(object) ){
              object@"scannum" <- value
            } else {
              warning("scannum is not in slotNames of object")
            }
            return(object)
          })


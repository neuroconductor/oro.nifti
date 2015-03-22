#' @name verified
#' @title Extract Image verified attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to verified 
#' @description Methods that act on the ``verified'' in the NIfTI/ANALYZE header.
#' @rdname verified-methods
#' @aliases verified-methods 
#' @aliases verified
#' @export
#'
#' @export
setGeneric("verified", function(object) standardGeneric("verified"))

#' @name verified
#' @rdname verified-methods
#' @aliases verified,nifti-method
#' @export
setMethod("verified", "nifti", function(object) { object@"verified" })

#' @name verified
#' @rdname verified-methods
#' @aliases verified,anlz-method
#' @export
setMethod("verified", "anlz", function(object) { object@"verified" })


#' @name verified
#' @rdname verified-methods
#' @aliases verified<- 
#' @export
setGeneric("verified<-", function(object, value) { standardGeneric("verified<-") })

#' @name verified
#' @rdname verified-methods
#' @aliases verified<-,nifti-method
#' @export
setMethod("verified<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( verified %in% slotNames(object) ){
              object@"verified" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("verified <-", value))               
            } else {
              warning("verified is not in slotNames of object")
            }                       
            return(object)
          })

#' @name verified
#' @rdname verified-methods
#' @aliases verified<-,anlz-method
#' @export
setMethod("verified<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( verified %in% slotNames(object) ){
              object@"verified" <- value
            } else {
              warning("verified is not in slotNames of object")
            }
            return(object)
          })


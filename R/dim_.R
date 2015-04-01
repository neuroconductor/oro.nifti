#' @name dim_-methods
#' @title Extract Image dim_ attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to dim_ 
#' @description Methods that act on the ``dim_'' in the NIfTI/ANALYZE header.
#' @rdname dim_-methods
#' @aliases dim_-methods 
#' @aliases dim_
#' @export
#'
#' @export
setGeneric("dim_", function(object) standardGeneric("dim_"))

#' @name dim_
#' @rdname dim_-methods
#' @aliases dim_,nifti-method
#' @export
setMethod("dim_", "nifti", function(object) { object@"dim_" })

#' @name dim_
#' @rdname dim_-methods
#' @aliases dim_,anlz-method
#' @export
setMethod("dim_", "anlz", function(object) { object@"dim_" })


#' @name dim_
#' @rdname dim_-methods
#' @aliases dim_<- 
#' @export
setGeneric("dim_<-", function(object, value) { standardGeneric("dim_<-") })

#' @name dim_
#' @rdname dim_-methods
#' @aliases dim_<-,nifti-method
#' @export
setMethod("dim_<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "dim_" %in% slotNames(object) ){
              object@"dim_" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("dim_ <-", value))               
            } else {
              warning("dim_ is not in slotNames of object")
            }                       
            return(object)
          })

#' @name dim_
#' @rdname dim_-methods
#' @aliases dim_<-,anlz-method
#' @export
setMethod("dim_<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "dim_" %in% slotNames(object) ){
              object@"dim_" <- value
            } else {
              warning("dim_ is not in slotNames of object")
            }
            return(object)
          })


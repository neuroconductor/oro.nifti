#' @name dim_un0
#' @title Extract Image dim_un0 attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to dim_un0 
#' @description Methods that act on the ``dim_un0'' in the NIfTI/ANALYZE header.
#' @rdname dim_un0-methods
#' @aliases dim_un0-methods 
#' @aliases dim_un0
#' @export
#'
#' @export
setGeneric("dim_un0", function(object) standardGeneric("dim_un0"))

#' @name dim_un0
#' @rdname dim_un0-methods
#' @aliases dim_un0,nifti-method
#' @export
setMethod("dim_un0", "nifti", function(object) { object@"dim_un0" })

#' @name dim_un0
#' @rdname dim_un0-methods
#' @aliases dim_un0,anlz-method
#' @export
setMethod("dim_un0", "anlz", function(object) { object@"dim_un0" })


#' @name dim_un0
#' @rdname dim_un0-methods
#' @aliases dim_un0<- 
#' @export
setGeneric("dim_un0<-", function(object, value) { standardGeneric("dim_un0<-") })

#' @name dim_un0
#' @rdname dim_un0-methods
#' @aliases dim_un0<-,nifti-method
#' @export
setMethod("dim_un0<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( dim_un0 %in% slotNames(object) ){
              object@"dim_un0" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("dim_un0 <-", value))               
            } else {
              warning("dim_un0 is not in slotNames of object")
            }                       
            return(object)
          })

#' @name dim_un0
#' @rdname dim_un0-methods
#' @aliases dim_un0<-,anlz-method
#' @export
setMethod("dim_un0<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( dim_un0 %in% slotNames(object) ){
              object@"dim_un0" <- value
            } else {
              warning("dim_un0 is not in slotNames of object")
            }
            return(object)
          })


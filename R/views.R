#' @name views
#' @title Extract Image views attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to views 
#' @description Methods that act on the ``views'' in the NIfTI/ANALYZE header.
#' @rdname views-methods
#' @aliases views-methods 
#' @aliases views
#' @export
#'
#' @export
setGeneric("views", function(object) standardGeneric("views"))

#' @name views
#' @rdname views-methods
#' @aliases views,nifti-method
#' @export
setMethod("views", "nifti", function(object) { object@"views" })

#' @name views
#' @rdname views-methods
#' @aliases views,anlz-method
#' @export
setMethod("views", "anlz", function(object) { object@"views" })


#' @name views
#' @rdname views-methods
#' @aliases views<- 
#' @export
setGeneric("views<-", function(object, value) { standardGeneric("views<-") })

#' @name views
#' @rdname views-methods
#' @aliases views<-,nifti-method
#' @export
setMethod("views<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "views" %in% slotNames(object) ){
              object@"views" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("views <-", value))               
            } else {
              warning("views is not in slotNames of object")
            }                       
            return(object)
          })

#' @name views
#' @rdname views-methods
#' @aliases views<-,anlz-method
#' @export
setMethod("views<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "views" %in% slotNames(object) ){
              object@"views" <- value
            } else {
              warning("views is not in slotNames of object")
            }
            return(object)
          })


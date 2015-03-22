#' @name scl_inter
#' @title Extract Image scl_inter attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to scl_inter 
#' @description Methods that act on the ``scl_inter'' in the NIfTI/ANALYZE header.
#' @rdname scl_inter-methods
#' @aliases scl_inter-methods 
#' @aliases scl_inter
#' @export
#'
#' @export
setGeneric("scl_inter", function(object) standardGeneric("scl_inter"))

#' @name scl_inter
#' @rdname scl_inter-methods
#' @aliases scl_inter,nifti-method
#' @export
setMethod("scl_inter", "nifti", function(object) { object@"scl_inter" })

#' @name scl_inter
#' @rdname scl_inter-methods
#' @aliases scl_inter,anlz-method
#' @export
setMethod("scl_inter", "anlz", function(object) { object@"scl_inter" })


#' @name scl_inter
#' @rdname scl_inter-methods
#' @aliases scl_inter<- 
#' @export
setGeneric("scl_inter<-", function(object, value) { standardGeneric("scl_inter<-") })

#' @name scl_inter
#' @rdname scl_inter-methods
#' @aliases scl_inter<-,nifti-method
#' @export
setMethod("scl_inter<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( scl_inter %in% slotNames(object) ){
              object@"scl_inter" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("scl_inter <-", value))               
            } else {
              warning("scl_inter is not in slotNames of object")
            }                       
            return(object)
          })

#' @name scl_inter
#' @rdname scl_inter-methods
#' @aliases scl_inter<-,anlz-method
#' @export
setMethod("scl_inter<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( scl_inter %in% slotNames(object) ){
              object@"scl_inter" <- value
            } else {
              warning("scl_inter is not in slotNames of object")
            }
            return(object)
          })


#' @name vols_added-methods
#' @title Extract Image vols_added attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to vols_added 
#' @description Methods that act on the ``vols_added'' in the NIfTI/ANALYZE header.
#' @rdname vols_added-methods
#' @aliases vols_added-methods 
#' @aliases vols_added
#' @export
#'
#' @export
setGeneric("vols_added", function(object) standardGeneric("vols_added"))

#' @name vols_added
#' @rdname vols_added-methods
#' @aliases vols_added,nifti-method
#' @export
setMethod("vols_added", "nifti", function(object) { object@"vols_added" })

#' @name vols_added
#' @rdname vols_added-methods
#' @aliases vols_added,anlz-method
#' @export
setMethod("vols_added", "anlz", function(object) { object@"vols_added" })


#' @name vols_added
#' @rdname vols_added-methods
#' @aliases vols_added<- 
#' @export
setGeneric("vols_added<-", function(object, value) { standardGeneric("vols_added<-") })

#' @name vols_added
#' @rdname vols_added-methods
#' @aliases vols_added<-,nifti-method
#' @export
setMethod("vols_added<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "vols_added" %in% slotNames(object) ){
              object@"vols_added" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("vols_added <-", value))               
            } else {
              warning("vols_added is not in slotNames of object")
            }                       
            return(object)
          })

#' @name vols_added
#' @rdname vols_added-methods
#' @aliases vols_added<-,anlz-method
#' @export
setMethod("vols_added<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "vols_added" %in% slotNames(object) ){
              object@"vols_added" <- value
            } else {
              warning("vols_added is not in slotNames of object")
            }
            return(object)
          })


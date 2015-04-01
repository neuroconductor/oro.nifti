#' @name hist_un0-methods
#' @title Extract Image hist_un0 attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to hist_un0 
#' @description Methods that act on the ``hist_un0'' in the NIfTI/ANALYZE header.
#' @rdname hist_un0-methods
#' @aliases hist_un0-methods 
#' @aliases hist_un0
#' @export
#'
#' @export
setGeneric("hist_un0", function(object) standardGeneric("hist_un0"))

#' @name hist_un0
#' @rdname hist_un0-methods
#' @aliases hist_un0,nifti-method
#' @export
setMethod("hist_un0", "nifti", function(object) { object@"hist_un0" })

#' @name hist_un0
#' @rdname hist_un0-methods
#' @aliases hist_un0,anlz-method
#' @export
setMethod("hist_un0", "anlz", function(object) { object@"hist_un0" })


#' @name hist_un0
#' @rdname hist_un0-methods
#' @aliases hist_un0<- 
#' @export
setGeneric("hist_un0<-", function(object, value) { standardGeneric("hist_un0<-") })

#' @name hist_un0
#' @rdname hist_un0-methods
#' @aliases hist_un0<-,nifti-method
#' @export
setMethod("hist_un0<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "hist_un0" %in% slotNames(object) ){
              object@"hist_un0" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("hist_un0 <-", value))               
            } else {
              warning("hist_un0 is not in slotNames of object")
            }                       
            return(object)
          })

#' @name hist_un0
#' @rdname hist_un0-methods
#' @aliases hist_un0<-,anlz-method
#' @export
setMethod("hist_un0<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "hist_un0" %in% slotNames(object) ){
              object@"hist_un0" <- value
            } else {
              warning("hist_un0 is not in slotNames of object")
            }
            return(object)
          })


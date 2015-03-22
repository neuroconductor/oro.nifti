#' @name hkey_un0-methods
#' @title Extract Image hkey_un0 attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to hkey_un0 
#' @description Methods that act on the ``hkey_un0'' in the NIfTI/ANALYZE header.
#' @rdname hkey_un0-methods
#' @aliases hkey_un0-methods 
#' @aliases hkey_un0
#' @export
#'
#' @export
setGeneric("hkey_un0", function(object) standardGeneric("hkey_un0"))

#' @name hkey_un0
#' @rdname hkey_un0-methods
#' @aliases hkey_un0,nifti-method
#' @export
setMethod("hkey_un0", "nifti", function(object) { object@"hkey_un0" })

#' @name hkey_un0
#' @rdname hkey_un0-methods
#' @aliases hkey_un0,anlz-method
#' @export
setMethod("hkey_un0", "anlz", function(object) { object@"hkey_un0" })


#' @name hkey_un0
#' @rdname hkey_un0-methods
#' @aliases hkey_un0<- 
#' @export
setGeneric("hkey_un0<-", function(object, value) { standardGeneric("hkey_un0<-") })

#' @name hkey_un0
#' @rdname hkey_un0-methods
#' @aliases hkey_un0<-,nifti-method
#' @export
setMethod("hkey_un0<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "hkey_un0" %in% slotNames(object) ){
              object@"hkey_un0" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("hkey_un0 <-", value))               
            } else {
              warning("hkey_un0 is not in slotNames of object")
            }                       
            return(object)
          })

#' @name hkey_un0
#' @rdname hkey_un0-methods
#' @aliases hkey_un0<-,anlz-method
#' @export
setMethod("hkey_un0<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "hkey_un0" %in% slotNames(object) ){
              object@"hkey_un0" <- value
            } else {
              warning("hkey_un0 is not in slotNames of object")
            }
            return(object)
          })


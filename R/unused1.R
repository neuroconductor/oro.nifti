#' @name unused1
#' @title Extract Image unused1 attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to unused1 
#' @description Methods that act on the ``unused1'' in the NIfTI/ANALYZE header.
#' @rdname unused1-methods
#' @aliases unused1-methods 
#' @aliases unused1
#' @export
#'
#' @export
setGeneric("unused1", function(object) standardGeneric("unused1"))

#' @name unused1
#' @rdname unused1-methods
#' @aliases unused1,nifti-method
#' @export
setMethod("unused1", "nifti", function(object) { object@"unused1" })

#' @name unused1
#' @rdname unused1-methods
#' @aliases unused1,anlz-method
#' @export
setMethod("unused1", "anlz", function(object) { object@"unused1" })


#' @name unused1
#' @rdname unused1-methods
#' @aliases unused1<- 
#' @export
setGeneric("unused1<-", function(object, value) { standardGeneric("unused1<-") })

#' @name unused1
#' @rdname unused1-methods
#' @aliases unused1<-,nifti-method
#' @export
setMethod("unused1<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( unused1 %in% slotNames(object) ){
              object@"unused1" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("unused1 <-", value))               
            } else {
              warning("unused1 is not in slotNames of object")
            }                       
            return(object)
          })

#' @name unused1
#' @rdname unused1-methods
#' @aliases unused1<-,anlz-method
#' @export
setMethod("unused1<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( unused1 %in% slotNames(object) ){
              object@"unused1" <- value
            } else {
              warning("unused1 is not in slotNames of object")
            }
            return(object)
          })


#' @name datatype
#' @title Extract NIfTI 3D Image datatype attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to datatype 
#' @description Methods that act on the ``datatype'' in the NIfTI header.
#' @rdname datatype-methods
#' @aliases datatype-methods 
#' @aliases datatype
#' @export
#'
#' @export
setGeneric("datatype", function(object) standardGeneric("datatype"))

#' @name datatype
#' @rdname datatype-methods
#' @aliases datatype,nifti-method
#' @export
setMethod("datatype", "nifti", function(object) { object@"datatype" })

#' @name datatype
#' @rdname datatype-methods
#' @aliases datatype,anlz-method
#' @export
setMethod("datatype", "anlz", function(object) { object@"datatype" })


#' @name datatype
#' @rdname datatype-methods
#' @aliases datatype<- 
#' @export
setGeneric("datatype<-", function(object, value) { standardGeneric("datatype<-") })

#' @name datatype
#' @rdname datatype-methods
#' @aliases datatype<-,nifti-method
#' @export
setMethod("datatype<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"datatype" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("datatype <-", value))            
            return(object)
          })

#' @name datatype
#' @rdname datatype-methods
#' @aliases datatype<-,anlz-method
#' @export
setMethod("datatype<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"datatype" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("datatype <-", value))            
            return(object)
          })


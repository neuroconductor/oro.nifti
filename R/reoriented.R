#' @name reoriented
#' @title Extract NIfTI 3D Image reoriented attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to reoriented 
#' @description Methods that act on the ``reoriented'' in the NIfTI header.
#' @rdname reoriented-methods
#' @aliases reoriented-methods 
#' @aliases reoriented
#' @export
#'
#' @export
setGeneric("reoriented", function(object) standardGeneric("reoriented"))

#' @name reoriented
#' @rdname reoriented-methods
#' @aliases reoriented,nifti-method
#' @export
setMethod("reoriented", "nifti", function(object) { object@"reoriented" })

#' @name reoriented
#' @rdname reoriented-methods
#' @aliases reoriented,anlz-method
#' @export
setMethod("reoriented", "anlz", function(object) { object@"reoriented" })


#' @name reoriented
#' @rdname reoriented-methods
#' @aliases reoriented<- 
#' @export
setGeneric("reoriented<-", function(object, value) { standardGeneric("reoriented<-") })

#' @name reoriented
#' @rdname reoriented-methods
#' @aliases reoriented<-,nifti-method
#' @export
setMethod("reoriented<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"reoriented" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("reoriented <-", value))            
            return(object)
          })

#' @name reoriented
#' @rdname reoriented-methods
#' @aliases reoriented<-,anlz-method
#' @export
setMethod("reoriented<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"reoriented" <- value         
            return(object)
          })


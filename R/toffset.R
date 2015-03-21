#' @name toffset
#' @title Extract NIfTI 3D Image toffset attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to toffset 
#' @description Methods that act on the ``toffset'' in the NIfTI header.
#' @rdname toffset-methods
#' @aliases toffset-methods 
#' @aliases toffset
#' @export
#'
#' @export
setGeneric("toffset", function(object) standardGeneric("toffset"))

#' @name toffset
#' @rdname toffset-methods
#' @aliases toffset,nifti-method
#' @export
setMethod("toffset", "nifti", function(object) { object@"toffset" })

#' @name toffset
#' @rdname toffset-methods
#' @aliases toffset,anlz-method
#' @export
setMethod("toffset", "anlz", function(object) { object@"toffset" })


#' @name toffset
#' @rdname toffset-methods
#' @aliases toffset<- 
#' @export
setGeneric("toffset<-", function(object, value) { standardGeneric("toffset<-") })

#' @name toffset
#' @rdname toffset-methods
#' @aliases toffset<-,nifti-method
#' @export
setMethod("toffset<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"toffset" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("toffset <-", value))            
            return(object)
          })

#' @name toffset
#' @rdname toffset-methods
#' @aliases toffset<-,anlz-method
#' @export
setMethod("toffset<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"toffset" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("toffset <-", value))            
            return(object)
          })


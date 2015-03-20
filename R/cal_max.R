#' @name cal.max
#' @title Extract NIfTI 3D Image cal.max attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to cal_max 
#' @description Methods that act on the ``cal_max'' in the NIfTI header.
#' @rdname cal_max-methods
#' @aliases cal.max-methods 
#' @aliases cal.max
#' @examples \dontrun{
#' url <- "http://nifti.nimh.nih.gov/nifti-1/data/avg152T1_LR_nifti.nii.gz"
#' urlfile <- file.path(system.file("nifti", package="oro.nifti"),
#'                      "mniLR.nii.gz")
#' download.file(url, urlfile, quiet=TRUE)
#' }
#' urlfile <- file.path(system.file("nifti", package="oro.nifti"),
#'                      "mniLR.nii.gz")
#' mniLR <- readNIfTI(urlfile)
#' cal.max(mniLR)
#' @export
setGeneric("cal.max", function(object) standardGeneric("cal.max"))

#' @name cal.max
#' @rdname cal_max-methods
#' @aliases cal.max,nifti-method
setMethod("cal.max", "nifti", function(object) { object@"cal_max" })

#' @name cal.max
#' @rdname cal_max-methods
#' @aliases cal.max,anlz-method
setMethod("cal.max", "anlz", function(object) { object@"cal_max" })


#' @name cal.max
#' @rdname cal_max-methods
#' @aliases cal.max<- 
setGeneric("cal.max<-", function(object, value) { standardGeneric("cal.max<-") })

#' @name cal.max
#' @rdname cal_max-methods
#' @aliases cal.max<-,nifti-method
setMethod("cal.max<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"cal_max" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("cal_max <-", value))            
            return(object)
          })

#' @name cal.max
#' @rdname cal_max-methods
#' @aliases cal.max<-,anlz-method
setMethod("cal.max<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"cal_max" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("cal_max <-", value))            
            return(object)
          })


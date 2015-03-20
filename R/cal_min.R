#' @name cal.min
#' @title Extract NIfTI 3D Image cal.min attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to cal_min 
#' @description Methods that act on the ``cal_min'' in the NIfTI header.
#' @rdname cal_min-methods
#' @aliases cal.min-methods 
#' @aliases cal.min
#' @examples \dontrun{
#' url <- "http://nifti.nimh.nih.gov/nifti-1/data/avg152T1_LR_nifti.nii.gz"
#' urlfile <- file.path(system.file("nifti", package="oro.nifti"),
#'                      "mniLR.nii.gz")
#' download.file(url, urlfile, quiet=TRUE)
#' }
#' urlfile <- file.path(system.file("nifti", package="oro.nifti"),
#'                      "mniLR.nii.gz")
#' mniLR <- readNIfTI(urlfile)
#' cal.min(mniLR)
#' @export
setGeneric("cal.min", function(object) standardGeneric("cal.min"))

#' @name cal.min
#' @rdname cal_min-methods
#' @aliases cal.min,nifti-method
setMethod("cal.min", "nifti", function(object) { object@"cal_min" })

#' @name cal.min
#' @rdname cal_min-methods
#' @aliases cal.min,anlz-method
setMethod("cal.min", "anlz", function(object) { object@"cal_min" })


#' @name cal.min
#' @rdname cal_min-methods
#' @aliases cal.min<- 
setGeneric("cal.min<-", function(object, value) { standardGeneric("cal.min<-") })

#' @name cal.min
#' @rdname cal_min-methods
#' @aliases cal.min<-,nifti-method
setMethod("cal.min<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"cal_min" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("cal_min <-", value))            
            return(object)
          })

#' @name cal.min
#' @rdname cal_min-methods
#' @aliases cal.min<-,anlz-method
setMethod("cal.min<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"cal_min" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("cal_min <-", value))            
            return(object)
          })


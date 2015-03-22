#' @name aux.file
#' @title Extract Image aux.file attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to aux_file 
#' @description Methods that act on the ``aux_file'' in the NIfTI/ANALYZE header.
#' @rdname aux_file-methods
#' @aliases aux.file-methods 
#' @aliases aux.file
#' @export
#' @examples \dontrun{
#' url <- "http://nifti.nimh.nih.gov/nifti-1/data/avg152T1_RL_nifti.nii.gz"
#' urlfile <- file.path(system.file("nifti", package="oro.nifti"),
#'                     "mniRL.nii.gz")
#' download.file(url, urlfile, quiet=TRUE)
#' }
#' options("niftiAuditTrail"=FALSE)
#' 
#' urlfile <- file.path(system.file("nifti", package="oro.nifti"),
#'                      "mniRL.nii.gz")
#' mniRL <- readNIfTI(urlfile)
#' aux.file(mniRL)
#' aux.file(mniRL) <- "avg152T1_RL_nifti"
#' aux.file(mniRL)
#' @export
setGeneric("aux.file", function(object) standardGeneric("aux.file"))

#' @name aux.file
#' @rdname aux_file-methods
#' @aliases aux.file,nifti-method
#' @export
setMethod("aux.file", "nifti", function(object) { object@"aux_file" })

#' @name aux.file
#' @rdname aux_file-methods
#' @aliases aux.file,anlz-method
#' @export
setMethod("aux.file", "anlz", function(object) { object@"aux_file" })


#' @name aux.file
#' @rdname aux_file-methods
#' @aliases aux.file<- 
#' @export
setGeneric("aux.file<-", function(object, value) { standardGeneric("aux.file<-") })

#' @name aux.file
#' @rdname aux_file-methods
#' @aliases aux.file<-,nifti-method
#' @export
setMethod("aux.file<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "aux_file" %in% slotNames(object) ){
              object@"aux_file" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("aux_file <-", value))               
            } else {
              warning("aux_file is not in slotNames of object")
            }                       
            return(object)
          })

#' @name aux.file
#' @rdname aux_file-methods
#' @aliases aux.file<-,anlz-method
#' @export
setMethod("aux.file<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "aux_file" %in% slotNames(object) ){
              object@"aux_file" <- value
            } else {
              warning("aux_file is not in slotNames of object")
            }
            return(object)
          })


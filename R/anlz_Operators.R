## Overloading binary operators for anlz object
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#' @title Operations for anlz Objects
#' @name anlzops
#' @rdname anlzops
#' @aliases Ops,anlz,anlz-method
#' @param e1 object
#' @param e2 object
setMethod("Ops", signature(e1="anlz", e2="anlz"),
          function(e1, e2) {
#             e1 = drop_img_dim(e1)            
#             e2 = drop_img_dim(e2)            
            e1@.Data = callGeneric(e1@.Data, e2@.Data)
            e1 = zero_trans(e1)
            e1 = cal_img(e1, infok = TRUE)
#             e1 = drop_img_dim(e1, warn=FALSE)
            ### creating the datatype that is the maximal precision
            new.dtype = max(datatype(e1), datatype(e2))
            datatype(e1) = new.dtype
            bitpix(e1) = convert.bitpix.anlz()[[convert.datatype.anlz(new.dtype)]]
#             validObject(e1)
            return(e1)
          }
)
#' @rdname anlzops
#' @aliases Ops,anlz,numeric-method
setMethod("Ops", signature(e1="anlz", e2="numeric"),
          function(e1, e2) {
#             e1 = drop_img_dim(e1)            
            e1@.Data = callGeneric(e1@.Data, e2)
            e1 = zero_trans(e1)            
            e1 = cal_img(e1, infok = TRUE)
#             e1 = drop_img_dim(e1)
#             validObject(e1)
            return(e1)
          }
)
#' @rdname anlzops
#' @aliases Ops,numeric,anlz-method
setMethod("Ops", signature(e1="numeric", e2="anlz"),
          function(e1, e2) {
#             e2 = drop_img_dim(e2)
            e2@.Data = callGeneric(e1, e2@.Data)
            # reset to keep the same code (fewer copy/paste errors)
            e1 = e2
            e1 = zero_trans(e1)            
            e1 = cal_img(e1, infok = TRUE)
#             e1 = drop_img_dim(e1)
#             validObject(e1)
            return(e1)
          }
)


#' @title Operations for anlz and nifti Objects
#' @name anlz_niftiops
#' @rdname anlz_niftiops
#' @aliases Ops,nifti,anlz-method
#' @param e1 object
#' @param e2 object
setMethod("Ops", signature(e1="nifti", e2="anlz"),
          function(e1, e2) {
#             e1 = drop_img_dim(e1) 
#             e2 = drop_img_dim(e2)            
            e1@.Data = callGeneric(e1@.Data, e2@.Data)
            e1 = zero_trans(e1)
            e1 = cal_img(e1, infok = TRUE)
#             e1 = drop_img_dim(e1, warn=FALSE)
            ### creating the datatype that is the maximal precision
#             new.dtype = max(datatype(e1), datatype(e2))
#             datatype(e1) = new.dtype
#             bitpix(e1) = convert.bitpix.anlz()[[new.dtype]]
#             validObject(e1)
            return(e1)
          }
)


#' @rdname anlz_niftiops
#' @aliases Ops,anlz,nifti-method
setMethod("Ops", signature(e1="anlz", e2="nifti"),
          function(e1, e2) {
#             e1 = drop_img_dim(e1)            
#             e2 = drop_img_dim(e2)            
            e2@.Data = callGeneric(e1@.Data, e2@.Data)
            e1 = e2
            e1 = zero_trans(e1)
            e1 = cal_img(e1, infok = TRUE)
#             e1 = drop_img_dim(e1, warn=FALSE)
            ### creating the datatype that is the maximal precision
            #             new.dtype = max(datatype(e1), datatype(e2))
            #             datatype(e1) = new.dtype
            #             bitpix(e1) = convert.bitpix.anlz()[[new.dtype]]
#             validObject(e1)
            return(e1)
          }
)
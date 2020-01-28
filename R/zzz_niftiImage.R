# #' @rdname scl_slope-methods
# setMethod("scl_slope<-", 
#           signature(object = "niftiImage"), 
#           function(object, value) { 
#             object$scl_slope = value
#             return(object)
#           })


#' @rdname scl_slope-methods
#' @aliases scl_slope,niftiImage-method
#' @examples
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' scl_slope(img)
#' scl.slope(img)
#' @export
setMethod("scl_slope", "niftiImage", function(object) { 
  object$scl_slope
})




# @rdname scl_inter-methods
# @aliases scl_inter<-,niftiImage-method
# @export
# setMethod("scl_inter<-", 
#           signature(object = "niftiImage"), 
#           function(object, value) { 
#             object$scl_inter = value
#             return(object)
#           })

#' @rdname scl_inter-methods
#' @aliases scl_inter,niftiImage-method
#' @export
#' @examples
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' scl_inter(img)
#' scl.inter(img)
setMethod("scl_inter", "niftiImage", function(object) { 
  object$scl_inter
})


# #' @rdname scl_slope-methods
# #' @aliases scl.slope<-,niftiImage-method
# #' @export
# #' 
# setMethod("scl.slope<-", 
#           signature(object = "niftiImage"), 
#           function(object, value) { 
#             scl_slope(object) <- value
#             return(object)
#           })

#' @rdname scl_slope-methods
#' @aliases scl.slope,niftiImage-method
#' @export
setMethod("scl.slope", "niftiImage", function(object) { 
  scl_slope(object)
})



# @rdname scl_inter-methods
# @aliases scl.inter<-,niftiImage-method
# @export
#
# setMethod("scl.inter<-", 
#           signature(object = "niftiImage"), 
#           function(object, value) { 
#             scl_inter(object) <- value
#             return(object)
#           })

#' @rdname scl_inter-methods
#' @aliases scl.inter,niftiImage-method
#' @export
setMethod("scl.inter", "niftiImage", function(object) { 
  scl_inter(object)
})


#' @rdname descrip-methods
#' @aliases descrip,niftiImage-method
#' @export
#' @examples
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' descrip(img)
setMethod("descrip", "niftiImage", function(object) { object$"descrip" })

#' @rdname descrip-methods
#' @aliases descrip<-,niftiImage-method
#' @export
#' @examples
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' descrip(img) = "a file"
#' descrip(img)
#' stopifnot(descrip(img) == "a file")
setMethod("descrip<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$descrip = value
            return(object)
          })


#' @rdname data_type-methods
#' @aliases data_type,niftiImage-method
#' @export
#' @examples
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' data_type(img)
#' datatype(img)
setMethod("data_type", "niftiImage", function(object) { object$"datatype" })

# @rdname data_type-methods
# @aliases data_type<-,niftiImage-method
# @export
# setMethod("data_type<-", 
#           signature(object = "niftiImage"), 
#           function(object, value) { 
#             object$datatype = value
#             return(object)
#           })


#' @rdname data_type-methods
#' @aliases datatype,niftiImage-method
#' @export
setMethod("datatype", "niftiImage", function(object) { object$"datatype" })

# @rdname data_type-methods
# @aliases datatype<-,niftiImage-method
# @export
# setMethod("datatype<-", 
#           signature(object = "niftiImage"), 
#           function(object, value) { 
#             object$datatype = value
#             return(object)
#           })


#' @rdname intent_p1-methods
#' @aliases intent_p1,niftiImage-method
#' @export
#' @examples
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' intent_p1(img)
#' intent_p1(img) = 2
#' stopifnot(intent_p1(img) == 2)
#' intent_p2(img)
#' intent_p2(img) = 2
#' stopifnot(intent_p2(img) == 2)
#' intent_p3(img)
#' intent_p3(img) = 2
#' stopifnot(intent_p3(img) == 2)
setMethod("intent_p1", "niftiImage", function(object) { object$"intent_p1" })

#' @rdname intent_p1-methods
#' @aliases intent_p1<-,niftiImage-method
#' @export
setMethod("intent_p1<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$intent_p1 = value
            return(object)
          })


#' @rdname intent_p2-methods
#' @aliases intent_p2,niftiImage-method
#' @export
setMethod("intent_p2", "niftiImage", function(object) { object$"intent_p2" })

#' @rdname intent_p2-methods
#' @aliases intent_p2<-,niftiImage-method
#' @export
setMethod("intent_p2<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$intent_p2 = value
            return(object)
          })


#' @rdname intent_p3-methods
#' @aliases intent_p3,niftiImage-method
#' @export
setMethod("intent_p3", "niftiImage", function(object) { object$"intent_p3" })

#' @rdname intent_p3-methods
#' @aliases intent_p3<-,niftiImage-method
#' @export
setMethod("intent_p3<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$intent_p3 = value
            return(object)
          })


#' @rdname intent_code-methods
#' @aliases intent_code,niftiImage-method
#' @export
#' @examples
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' intent_code(img)
#' intent_code(img) = 4
#' stopifnot(intent_code(img) == 4)
setMethod("intent_code", "niftiImage", function(object) { object$"intent_code" })

#' @rdname intent_code-methods
#' @aliases intent_code<-,niftiImage-method
#' @export
setMethod("intent_code<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$intent_code = value
            return(object)
          })


#' @rdname cal_max-methods
#' @aliases cal.max,niftiImage-method
#' @export
#' @examples
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' cal.max(img)
#' cal_max(img)
#' cal.max(img) = 2500
#' stopifnot(cal_max(img) == 2500)
#' cal_max(img) = 2500
#' cal.min(img)
#' cal.min(img) = 2
#' stopifnot(cal_min(img) == 2)
#' cal_min(img)
#' cal_min(img) = 0
#' stopifnot(cal_min(img) == 0)
setMethod("cal.max", "niftiImage", function(object) { object$"cal_max" })

#' @rdname cal_max-methods
#' @aliases cal.max<-,niftiImage-method
#' @export
setMethod("cal.max<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$cal_max = value
            return(object)
          })


#' @rdname cal_min-methods
#' @aliases cal.min,niftiImage-method
#' @export
setMethod("cal.min", "niftiImage", function(object) { object$"cal_min" })

#' @rdname cal_min-methods
#' @aliases cal.min<-,niftiImage-method
#' @export
setMethod("cal.min<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$cal_min = value
            return(object)
          })


#' @rdname cal_min-methods
#' @aliases cal_min,niftiImage-method
#' @export
setMethod("cal_min", "niftiImage", function(object) { object$"cal_min" })

#' @rdname cal_min-methods
#' @aliases cal_min<-,niftiImage-method
#' @export
setMethod("cal_min<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$cal_min = value
            return(object)
          })

#' @rdname cal_max-methods
#' @aliases cal_max,niftiImage-method
#' @export
setMethod("cal_max", "niftiImage", function(object) { object$"cal_max" })

#' @rdname cal_max-methods
#' @aliases cal_max<-,niftiImage-method
#' @export
setMethod("cal_max<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$cal_max = value
            return(object)
          })

#' @rdname slice_start-methods
#' @aliases slice_start,niftiImage-method
#' @export
#' @examples
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' slice_start(img)
#' slice_start(img) = 4
#' stopifnot(slice_start(img) == 4) 
#' slice.start(img)
#' slice.start(img) = 0
setMethod("slice_start", "niftiImage", function(object) { object$"slice_start" })

#' @rdname slice_start-methods
#' @aliases slice_start<-,niftiImage-method
#' @export
setMethod("slice_start<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$slice_start = value
            return(object)
          })

#' @rdname slice_start-methods
#' @aliases slice.start,niftiImage-method
#' @export
setMethod("slice.start", "niftiImage", function(object) { object$"slice_start" })

#' @rdname slice_start-methods
#' @aliases slice.start<-,niftiImage-method
#' @export
setMethod("slice.start<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$slice_start = value
            return(object)
          })


#' @rdname slice_end-methods
#' @aliases slice_end,niftiImage-method
#' @export
#' @examples
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' slice_end(img)
#' slice_end(img) = 4
#' stopifnot(slice_end(img) == 4) 
#' slice.end(img)
#' slice.end(img) = 0
setMethod("slice_end", "niftiImage", function(object) { object$"slice_end" })

#' @rdname slice_end-methods
#' @aliases slice_end<-,niftiImage-method
#' @export
setMethod("slice_end<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$slice_end = value
            return(object)
          })

#' @rdname slice_end-methods
#' @aliases slice.end,niftiImage-method
#' @export
setMethod("slice.end", "niftiImage", function(object) { object$"slice_end" })

#' @rdname slice_end-methods
#' @aliases slice.end<-,niftiImage-method
#' @export
setMethod("slice.end<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$slice_end = value
            return(object)
          })


#' @rdname vox_offset-methods
#' @aliases vox_offset,niftiImage-method
#' @export
#' @examples
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' vox_offset(img)
#' img = RNifti::readNifti(file)
#' vox.offset(img)
setMethod("vox_offset", "niftiImage", function(object) { object$"vox_offset" })




# @rdname vox_offset-methods
# @aliases vox_offset<-,niftiImage-method
# @export
# setMethod("vox_offset<-", 
#           signature(object = "niftiImage"), 
#           function(object, value) { 
#             object$vox_offset = value
#             return(object)
#           })

#' @rdname vox_offset-methods
#' @aliases vox.offset,niftiImage-method
#' @export
setMethod("vox.offset", "niftiImage", function(object) { object$"vox_offset" })

# @rdname vox_offset-methods
# @aliases vox.offset<-,niftiImage-method
# @export
# setMethod("vox.offset<-", 
#           signature(object = "niftiImage"), 
#           function(object, value) { 
#             object$vox_offset = value
#             return(object)
#           })


#' @rdname bitpix-methods
#' @aliases bitpix,niftiImage-method
#' @export
#' @examples
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' bitpix(img)
setMethod("bitpix", "niftiImage", function(object) { object$"bitpix" })

# @rdname bitpix-methods
# @aliases bitpix<-,niftiImage-method
# @export
# setMethod("bitpix<-", 
#           signature(object = "niftiImage"), 
#           function(object, value) { 
#             object$bitpix = value
#             return(object)
#           })


#' @rdname xyzt_units-methods
#' @aliases xyzt_units,niftiImage-method
#' @export
#' @examples
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' xyzt_units(img)
#' xyzt_units(img) = 8
#' stopifnot(xyzt_units(img) ==  8)
setMethod("xyzt_units", "niftiImage", function(object) { object$"xyzt_units" })

#' @rdname xyzt_units-methods
#' @aliases xyzt_units<-,niftiImage-method
#' @export
setMethod("xyzt_units<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$xyzt_units = value
            return(object)
          })


#' @rdname slice_duration-methods
#' @aliases slice_duration,niftiImage-method
#' @export
#' @examples 
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' slice_duration(img)
#' slice_duration(img) = 8
#' stopifnot(slice_duration(img) ==  8)
setMethod("slice_duration", "niftiImage", function(object) { object$"slice_duration" })

#' @rdname slice_duration-methods
#' @aliases slice_duration<-,niftiImage-method
#' @export
setMethod("slice_duration<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$slice_duration = value
            return(object)
          })

#' @rdname slice_code-methods
#' @aliases slice_code,niftiImage-method
#' @export
#' @examples 
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' slice_code(img)
#' slice_code(img) = 8
#' stopifnot(slice_code(img) ==  8)
setMethod("slice_code", "niftiImage", function(object) { object$"slice_code" })

#' @rdname slice_code-methods
#' @aliases slice_code<-,niftiImage-method
#' @export
setMethod("slice_code<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$slice_code = value
            return(object)
          })


#' @rdname toffset-methods
#' @aliases toffset,niftiImage-method
#' @export
#' @examples 
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' toffset(img)
#' toffset(img) = 8
#' stopifnot(toffset(img) ==  8)
setMethod("toffset", "niftiImage", function(object) { object$"toffset" })

#' @rdname toffset-methods
#' @aliases toffset<-,niftiImage-method
#' @export
setMethod("toffset<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$toffset = value
            return(object)
          })


#' @rdname aux_file-methods
#' @aliases aux_file,niftiImage-method
#' @export
#' @examples 
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' aux_file(img)
#' aux_file(img) = "hey"
#' stopifnot(aux_file(img) ==  "hey")
setMethod("aux_file", "niftiImage", function(object) { object$"aux_file" })

#' @rdname aux_file-methods
#' @aliases aux_file<-,niftiImage-method
#' @export
setMethod("aux_file<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$aux_file = value
            return(object)
          })


#' @rdname qform_code-methods
#' @aliases qform_code,niftiImage-method
#' @export
#' @examples 
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' qform_code(img)
#' qform_code(img) = 8
#' stopifnot(qform_code(img) ==  8)
setMethod("qform_code", "niftiImage", function(object) { object$"qform_code" })

#' @rdname qform_code-methods
#' @aliases qform_code<-,niftiImage-method
#' @export
setMethod("qform_code<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$qform_code = value
            return(object)
          })


#' @rdname sform_code-methods
#' @aliases sform_code,niftiImage-method
#' @export
#' @examples 
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' sform_code(img)
#' sform_code(img) = 4
#' stopifnot(sform_code(img) ==  4)
setMethod("sform_code", "niftiImage", function(object) { object$"sform_code" })

#' @rdname sform_code-methods
#' @aliases sform_code<-,niftiImage-method
#' @export
setMethod("sform_code<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$sform_code = value
            return(object)
          })


#' @rdname intent_name-methods
#' @aliases intent_name,niftiImage-method
#' @export
#' @examples 
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' intent_name(img)
#' intent_name(img) = "hey"
#' stopifnot(intent_name(img) ==  "hey")
setMethod("intent_name", "niftiImage", function(object) { object$"intent_name" })

#' @rdname intent_name-methods
#' @aliases intent_name<-,niftiImage-method
#' @export
setMethod("intent_name<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$intent_name = value
            return(object)
          })


#' @rdname quatern_b-methods
#' @aliases quatern_b,niftiImage-method
#' @export
#' @examples 
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' quatern_b(img)
#' quatern_b(img) = 3
#' stopifnot(quatern_b(img) == 3)
#' quatern_c(img)
#' quatern_c(img) = 3
#' stopifnot(quatern_c(img) == 3)
#' quatern_d(img)
#' quatern_d(img) = 3
#' stopifnot(quatern_d(img) == 3)
setMethod("quatern_b", "niftiImage", function(object) { object$"quatern_b" })

#' @rdname quatern_b-methods
#' @aliases quatern_b<-,niftiImage-method
#' @export
setMethod("quatern_b<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$quatern_b = value
            return(object)
          })

#' @rdname quatern_c-methods
#' @aliases quatern_c,niftiImage-method
#' @export
setMethod("quatern_c", "niftiImage", function(object) { object$"quatern_c" })

#' @rdname quatern_c-methods
#' @aliases quatern_c<-,niftiImage-method
#' @export
setMethod("quatern_c<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$quatern_c = value
            return(object)
          })


#' @rdname quatern_d-methods
#' @aliases quatern_d,niftiImage-method
#' @export
setMethod("quatern_d", "niftiImage", function(object) { object$"quatern_d" })

#' @rdname quatern_d-methods
#' @aliases quatern_d<-,niftiImage-method
#' @export
setMethod("quatern_d<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$quatern_d = value
            return(object)
          })

#' @rdname qoffset_x-methods
#' @aliases qoffset_x,niftiImage-method
#' @export
#' @examples 
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' qoffset_x(img)
#' qoffset_x(img) = 10
#' stopifnot(qoffset_x(img) == 10)
setMethod("qoffset_x", "niftiImage", function(object) { object$"qoffset_x" })

#' @rdname qoffset_x-methods
#' @aliases qoffset_x<-,niftiImage-method
#' @export
setMethod("qoffset_x<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$qoffset_x = value
            return(object)
          })

#' @rdname qoffset_y-methods
#' @aliases qoffset_y,niftiImage-method
#' @export
#' @examples 
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' qoffset_y(img)
#' qoffset_y(img) = 10
#' stopifnot(qoffset_y(img) == 10)
setMethod("qoffset_y", "niftiImage", function(object) { object$"qoffset_y" })

#' @rdname qoffset_y-methods
#' @aliases qoffset_y<-,niftiImage-method
#' @export
setMethod("qoffset_y<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$qoffset_y = value
            return(object)
          })

#' @rdname qoffset_z-methods
#' @aliases qoffset_z,niftiImage-method
#' @export
#' @examples 
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' qoffset_z(img)
#' qoffset_z(img) = 10
#' stopifnot(qoffset_z(img) == 10)
setMethod("qoffset_z", "niftiImage", function(object) { object$"qoffset_z" })

#' @rdname qoffset_z-methods
#' @aliases qoffset_z<-,niftiImage-method
#' @export
setMethod("qoffset_z<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$qoffset_z = value
            return(object)
          })


#' @rdname srow_x-methods
#' @aliases srow_x,niftiImage-method
#' @export
#' @examples 
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' srow_x(img)
#' srow_x(img) = rep(0, 4)
#' stopifnot(srow_x(img) == rep(0, 4))
#' 
#' srow_y(img)
#' srow_y(img) = rep(0, 4)
#' stopifnot(srow_y(img) == rep(0, 4))
#' 
#' srow_z(img)
#' srow_z(img) = rep(0, 4)
#' stopifnot(srow_z(img) == rep(0, 4))
setMethod("srow_x", "niftiImage", function(object) { object$"srow_x" })

#' @rdname srow_x-methods
#' @aliases srow_x<-,niftiImage-method
#' @export
setMethod("srow_x<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$srow_x = value
            return(object)
          })

#' @rdname srow_y-methods
#' @aliases srow_y,niftiImage-method
#' @export
setMethod("srow_y", "niftiImage", function(object) { object$"srow_y" })

#' @rdname srow_y-methods
#' @aliases srow_y<-,niftiImage-method
#' @export
setMethod("srow_y<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$srow_y = value
            return(object)
          })


#' @rdname srow_z-methods
#' @aliases srow_z,niftiImage-method
#' @export
setMethod("srow_z", "niftiImage", function(object) { object$"srow_z" })

#' @rdname srow_z-methods
#' @aliases srow_z<-,niftiImage-method
#' @export
setMethod("srow_z<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$srow_z = value
            return(object)
          })

#' @rdname magic-methods
#' @aliases magic,niftiImage-method
#' @export
#' @examples 
#' file = system.file("extdata", "example.nii.gz", package = "RNifti")
#' img = RNifti::readNifti(file)
#' magic(img)
#' magic(img) = "ni1"
#' stopifnot(magic(img) == "ni1")
#' magic(img) = "n+1"
#' stopifnot(magic(img) == "n+1")
#' magic(img) = "r" # bad magic
#' stopifnot(magic(img) == "")
setMethod("magic", "niftiImage", function(object) { object$"magic" })

#' @rdname magic-methods
#' @aliases magic<-,niftiImage-method
#' @export
setMethod("magic<-", 
          signature(object = "niftiImage"), 
          function(object, value) { 
            object$magic = value
            return(object)
          })



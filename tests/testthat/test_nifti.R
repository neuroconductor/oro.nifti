context("nifti data")

img01 <- nifti(array(1:64, c(4,4,4,1)), datatype=4)
ximg01 = img01
img02 <- nifti(array(64:1, c(4,4,4,1)), datatype=4)

test_that("as.nifti", {
  expect_s4_class(as.nifti(img01), "nifti")
  anlz_img = as.anlz(img01)
  expect_s4_class(anlz_img, "anlz")
  expect_s4_class(img01 + anlz_img, "nifti")
  expect_s4_class(img01 + anlz_img, "nifti")
})

test_that("operators", {
  expect_false(is.afni(img01))
  expect_false(is.anlz(img01))
  expect_true(is.nifti(img01 + img02))
  expect_true(is.nifti(sqrt(2) * img01))
  expect_true(is.nifti(img02 / pi))
})


# db_name
test_that("extract and assign char", {
  # funcs = c("db_name", "data_type")
  funcs = c("data_type", "db_name", "regular", "dim_info", 
            "descrip", "aux_file", 
            "intent_name", "magic")
  func = funcs[1]
  
  for (func in funcs) {
    assign_func = paste0(func, "<-")
    t_value = basename(tempfile())
    expect_silent(do.call(func, args = list(img01)))
    expect_silent({
      img01 = do.call(assign_func, list(object = img01, value = t_value))
    })
    expect_equal(do.call(func, list(img01)), t_value)
  }
})



# db_name
test_that("extract and assign numeric", {
  # funcs = c("db_name", "data_type")
  
  funcs = c("sizeof_hdr", "extents", "session_error", "dim_", "intent_p1", 
    "intent_p2", "intent_p3", "intent_code", "datatype", "bitpix", 
    "slice_start", "pixdim", "vox_offset", "scl_slope", "scl_inter", 
    "slice_end", "slice_code", "xyzt_units", "cal_max", "cal_min", 
    "slice_duration", "toffset", "glmax", "glmin", "qform_code", 
    "sform_code", "quatern_b", "quatern_c", "quatern_d", "qoffset_x", 
    "qoffset_y", "qoffset_z", "srow_x", "srow_y", "srow_z", "extender",
    "img_data"
  )
  func = funcs[1]
  
  for (func in funcs) {
    img01 = ximg01
    assign_func = paste0(func, "<-")
    expect_silent({
      t_value = do.call(func, args = list(img01))
    })
    expect_silent({
      img01 = do.call(assign_func, list(object = img01, value = t_value))
    })
    expect_equal(do.call(func, list(img01)), t_value)
  }
})

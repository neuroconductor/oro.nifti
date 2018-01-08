context("anlz data")

img01 <- anlz(array(1:64, c(4,4,4,1)), datatype=4)
ximg01 = img01
img02 <- anlz(array(64:1, c(4,4,4,1)), datatype=4)

test_that("as.nifti", {
  expect_s4_class(as.nifti(img01), "nifti")
  expect_s4_class(as.anlz(img01), "anlz")
})


test_that("operators", {
  expect_true(is.anlz(img01 + img02))
  expect_true(is.anlz(sqrt(2) * img01))
  expect_true(is.anlz(img02 / pi))
})


test_that("extracting some info", {
  expect_silent(cal.units(img01))
  expect_silent({
    cal.units(img01) = "hey"
  })
  expect_equal(cal.units(img01), "hey")
  
  expect_silent({
    cal_units(img01) = "ho"
  })
  expect_equal(cal_units(img01), "ho")
  
})

# db_name
test_that("extract and assign char", {
  # funcs = c("db_name", "data_type")
  funcs = c("data_type", "db_name", 
            "regular", "hkey_un0", "vox_units", "cal_units", "aux_file", 
            "generated", "scannum", "patient_id", "exp_date", "exp_time", 
            "hist_un0", "descrip", "orient")
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
  
  funcs = c( "extents", "session_error", "dim_", "pixdim",
     "regular", "hkey_un0", "dim_", "unused1", 
     "datatype", "bitpix", "dim_un0", "vox_offset", "funused1", 
     "funused2", "funused3", "cal_max", "cal_min", "compressed", "verified", 
     "glmax", "glmin", "orient", "origin", 
     "views", "vols_added", "start_field", "field_skip", 
     "omax", "omin", "smax", "smin", "img_data")
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




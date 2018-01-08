# db_name

# funcs = c("db_name", "data_type")
funcs = c("data_type", "db_name",
          "regular", "hkey_un0", "vox_units", "cal_units", "aux_file", 
          "generated", "scannum", "patient_id", "exp_date", "exp_time", 
          "hist_un0")
func = funcs[1]

for (func in funcs) {
  fname = paste0("test_", func, "_autotest.R")
  fname = file.path("tests", "testthat", fname)
  x = "img <- anlz(array(1:64, c(4,4,4,1)), datatype=4)"
  x = c(x, "t_value = basename(tempfile())")
  x = c(x, "", 'test_that("extract and assign auto with ', func, '", {')
  x = c(x, paste0("expect_silent(", func, "(", "img))" ))
  x = c(x, paste0("expect_silent({", func, "(img) = t_value})"))
  
  x = c(x, paste0("expect_equal(", func, "(", "img), t_value)"))
  x = c(x, "})")
  writeLines(x, con = fname, sep = "\n")
}
context("anlz data")

img01 <- anlz(array(1:64, c(4,4,4,1)), datatype=4)
img02 <- anlz(array(64:1, c(4,4,4,1)), datatype=4)


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
test_that("extract and assign", {
  funcs = "db_name"
  func = funcs[1]
  assign_func = paste0(func, "<-")
  t_value = basename(tempfile())
  expect_silent(do.call(func, args = list(img01)))
  expect_silent({
    img01 = do.call(assign_func, list(object = img01, value = t_value))
  })
  expect_equal(do.call(func, list(img01)), t_value)
})



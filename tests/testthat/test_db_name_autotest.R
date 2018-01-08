img <- anlz(array(1:64, c(4,4,4,1)), datatype=4)
t_value = basename(tempfile())

test_that("extract and assign auto with 
db_name
", {
expect_silent(db_name(img))
expect_silent({db_name(img) = t_value})
expect_equal(db_name(img), t_value)
})

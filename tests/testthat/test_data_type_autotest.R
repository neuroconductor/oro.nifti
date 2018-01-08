img <- anlz(array(1:64, c(4,4,4,1)), datatype=4)
t_value = basename(tempfile())

test_that("extract and assign auto with 
data_type
", {
expect_silent(data_type(img))
expect_silent({data_type(img) = t_value})
expect_equal(data_type(img), t_value)
})

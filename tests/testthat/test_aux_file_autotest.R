img <- anlz(array(1:64, c(4,4,4,1)), datatype=4)
t_value = basename(tempfile())

test_that("extract and assign auto with 
aux_file
", {
expect_silent(aux_file(img))
expect_silent({aux_file(img) = t_value})
expect_equal(aux_file(img), t_value)
})

img <- anlz(array(1:64, c(4,4,4,1)), datatype=4)
t_value = basename(tempfile())

test_that("extract and assign auto with 
hist_un0
", {
expect_silent(hist_un0(img))
expect_silent({hist_un0(img) = t_value})
expect_equal(hist_un0(img), t_value)
})

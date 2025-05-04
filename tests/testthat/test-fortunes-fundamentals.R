test_that("the function returns a string", {
  expect_true(is.character(fortunes()))
})

test_that("the function throws an error when used with an input",{
  expect_error(fortunes("string"))

})



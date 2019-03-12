
context('File load and summary are correct')

test_that('Loads years right', {
  dfs <- fars_read_years(2014:2015)
  expect_that(dfs, is_a('list'))
  expect_that(dfs[[1]], is_a('tbl_df'))
  expect_equal(length(dfs), 2)
})

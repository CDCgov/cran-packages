

test_that("expects a character", {
  expect_error(
    check_for_packagesrds(1),
    regexp = "should be a character"
  )
})


test_that("expects ONE character", {
  expect_error(
    check_for_packagesrds(character(0)),
    regexp = "single url should"
  )
})


test_that("expects valid url", {
  expect_error(
    check_for_packagesrds("test"),
    regexp = "Invalid url"
  )
})


test_that("finds the file", {
  expect_equal(
    # use a known available file
    check_for_packagesrds("https://cran.r-project.org/"),
    "https://cran.r-project.org/"
  )
})


test_that("reports redirection", {
  expect_error(
    # use a known redirection address
    check_for_packagesrds("https://developer.mozilla.org/en-US/docs/AJAX"),
    regexp = "has moved"
  )
})



test_that("file is not found", {
  expect_error(
    # use a known redirection address
    check_for_packagesrds("https://example.com/my-deleted-blog-post"),
    regexp = "Not found"
  )
})



# Test results if the file is found
if(
  check_for_packagesrds() == "http://cran.r-project.org/web/packages/packages.rds"
){
  
  path <- tempdir()
  
  # check using authors of a package known to be available
  test_that("returns a dataframe", {
    expect_s3_class(
      get_cdc_authored(regex = "Brian Ripley", path = path),
      class = "data.frame"
    )
  })
  
  # check using an author that should not exist
  test_that("has 0 rows", {
    expect_equal(
      nrow(
        get_cdc_authored(regex = as.character(runif(1)), path = path)
      ),
      0L
    )
  })
  
  unlink(file.path(path, "cran_file"))
}


library(testthat)

context("iscedToYearsUS")

test_that("mapping US ISCED responses to years of education", {
  responses <- data.frame(
    studentId = c("6d1afd4b566c", "41f889d9c304", "5fcddf45f746", "cdcae54c1dd9", "a880eee54b90"),
    iscedMother = c("0", "1", "2", "3A", "3B"),
    iscedFather = c("3C", "5A", "5B", "5A", "6"),
    stringsAsFactors = FALSE
  )
  expectedEncoding <- data.frame(
    studentId = c("6d1afd4b566c", "41f889d9c304", "5fcddf45f746", "cdcae54c1dd9", "a880eee54b90"),
    yearsOfEducationMother = c(3, 6, 9, 12, NA),
    yearsOfEducationFather = c(NA, 16, 14, 16, 16),
    stringsAsFactors = FALSE
  )
  actualEncoding <- iscedToYearsUS(responses)
  expect_equivalent(actualEncoding$yearsOfEducationMother, expectedEncoding$yearsOfEducationMother)
})

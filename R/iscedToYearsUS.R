#' Encodes ISCED Code as number of years of education for the United States.
#'
#' Derives years of education of student's parents
#' based on student's choice of ISCED codes. See:
#' http://uis.unesco.org/en/topic/international-standard-classification-education-isced
#' for more information about ISCED codes
#' @param responses data.frame of student responses, including at least the
#' following columns:
#'   studentId
#'   iscedMother
#'   iscedFather
#' @return encoded responses data.frame with columns:
#'   studentId
#'   yearsOfEducationMother
#'   yearsOfEducationFather
#' @export
iscedToYearsUS <- function(responses) {
  encodedResponses <- data.frame(
    studentId = responses$studentId,
    yearsOfEducationMother = sapply(responses$iscedMother, iscedToYearMapperUS, simplify = TRUE, USE.NAMES = FALSE),
    yearsOfEducationFather = sapply(responses$iscedFather, iscedToYearMapperUS, simplify = TRUE, USE.NAMES = FALSE),
    stringsAsFactors = FALSE
  )
  return(encodedResponses)
}

# ISCED Code to Years of Education for the United States.
# http://www.oecd.org/pisa/sitedocument/PISA-2015-Technical-Report-2015-Annex-D-Mapping-of-ISCED.xlsx
iscedToYearMappingUS <- list("0" = 3, "1" = 6, "2" = 9, "3A" = 12, "3B" = NA, "3C" = NA, "5A" = 16, "5B" = 14, "6" = 16)

iscedToYearMapperUS <- function(iscedCode) {
  return(iscedToYearMappingUS[[iscedCode]])
}

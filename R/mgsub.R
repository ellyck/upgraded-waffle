#' Multi Global Substitution
#'
#' This function allows you to make multiple global substitutions.

#' Credit: Theodore Lytras
#' https://stackoverflow.com/questions/15253954/replace-multiple-letters-with-accents-with-gsub

#' @param pattern Input vector with strings that are to be replaced.
#' @param replacement Input vector with the replacement strings. 
#' @param x a character vector for which replacement is sought.
#' @keywords multi gsub multiple substitution
#' @export
#' @examples
#' mgsub(c("dog", "tree"), c("cat", "plant"), "The dog and the tree") # returns "The cat and the plant"

mgsub <- function(pattern, replacement, x, ...) {
  if (length(pattern)!=length(replacement)) {
    stop("pattern and replacement do not have the same length.")
  }
  result <- x
  for (i in 1:length(pattern)) {
    result <- gsub(pattern[i], replacement[i], result, ...)
  }
  result
}

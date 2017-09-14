#' Proper function
#'
#' This function allows you to capitalize the first letter of a word and lowercase subsequent letters. 
# 'Equivalent to the PROPER() function in Excel. 

#' Credit: Matthew Plourde
#' https://stackoverflow.com/questions/24956546/capitalizing-letters-r-equivalent-of-excel-proper-function

#' @param string a character string or valid expression. 
#' @keywords proper
#' @export
#' @examples
#' proper("moose") # returns "Moose"

proper <- function(x) {
    gsub("(?<=\\b)([a-z])", "\\U\\1", tolower(x), perl=TRUE)
}

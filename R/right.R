#' Right function
#'
#' This function allows you to trim a character string, starting from the end. Equivalent to the 
#' RIGHT() function in Excel. 

#' Credit: Andrea Cirillo 
#' https://stackoverflow.com/questions/15897236/whats-the-equivalent-to-excels-left-and-right-in-r

#' @param string a character string or valid expression. 
#' @param char number of characters to keep starting from the last character of the string.
#' @keywords right
#' @export
#' @examples
#' left("dragonfly",3) # returns "fly"

right <- function (string, char){ 
    substr(string,nchar(string)-(char-1),nchar(string)) 
}
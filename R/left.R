#' Left function
#'
#' This function allows you to trim a character string, starting from the beginning. Equivalent to the 
#' LEFT() function in Excel.
  
#' Credit: Andrea Cirillo 
#' https://stackoverflow.com/questions/15897236/whats-the-equivalent-to-excels-left-and-right-in-r

#' @param string a character string or valid expression. 
#' @param char number of characters to keep starting from the first character of the string.
#' @keywords left
#' @export
#' @examples
#' left("moose",3) # returns "moo"

left <- function (string,char){ 
    substr(string,1,char) 
}
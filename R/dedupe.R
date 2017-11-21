#' Dedupe function

#'
#' This function allows for deduplification. Removes matching observations between two data frames based on a variable from the selected data frame. Returns a data frame 'deduped'.
 
#' @param x data frame to dedupe.
#' @param y data frame to compare.
#' @param var.x a character string or column name by which to compare the data frames from x.
#' @param var.y a character string or column name by which to compare the data frames from y.

#' @keywords dedupe duplicate
#' @export
#' @examples dedupe(df1, df2) # returns non-matching rows from df1


dedupe <- function(x, y, var.x, var.y=var.x){
  dupes <- merge(x, y, by.x=var.x, by.y=var.y)
  
  if (nrow(dupes) > 0) {
    dupes <- match(y[[var.y]], x[[var.x]])
    dupes <- dupes[!is.na(dupes)]
    deduped <<- x[-dupes,]
 
    print("Dupes have been removed. Cleaned!")
  }
  
  else {
    print("No dupes found.")
  }
}



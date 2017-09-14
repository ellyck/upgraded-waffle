#' Split List to CSV 
#'
#' This function allows you to split a list of data frames into separate CSV files.
#' @param list the list containing data frames that are to be split into CSV files.
#' Credit: agstudy
# https://stackoverflow.com/questions/17018138/using-lapply-to-apply-a-function-over-list-of-data-frames-and-saving-output-to-f

#' @keywords split data frame df csv list
#' @export
#' @examples
#' splitcsv(df_list) # writes CSV files to directory using the element name as filenames.


splitcsv <- function(list) {
	lapply(1:length(list), 
	function(i) write.csv(list[[i]], 
	file = paste0(names(list[i]), ".csv"), 
	row.names = FALSE))}
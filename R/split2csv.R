#' Split List to CSV by Factor
#'
#' This function allows you to split a data frame into a list of data frames by a chosen factor and write them out as separate CSV files in the chosen directory.

#' @param x the vector or data frame containing values to be divided into groups.
#' @param f a ‘factor’ in the sense that as.factor(f) defines the grouping, or a list of such factors in which case their interaction is used for the grouping.
#' @param directory the directory that the CSV files will be written out to. Default is current working directory. 

#' Credit: agstudy, Tyler Rinker
# https://stackoverflow.com/questions/9713294/split-data-frame-based-on-levels-of-a-factor-into-new-data-frames
# https://stackoverflow.com/questions/17018138/using-lapply-to-apply-a-function-over-list-of-data-frames-and-saving-output-to-f

#' @keywords split data frame df csv list factor
#' @export
#' @examples
#' split2csv(mtcars, 'carb') # writes CSV files to the current working directory using the element name as filenames.

split2csv <- function(x, f, directory = getwd()) {
  setwd(directory)
  df_list <- split(x, as.factor(x[[f]]))
  lapply(1:length(df_list), 
         function(i) write.csv(df_list[[i]], 
                               file = paste0(names(df_list[i]), ".csv"), 
                               row.names = FALSE))}

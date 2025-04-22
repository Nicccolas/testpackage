#' load titanic.csv
#'
#' @param file_path the data
#' @param output_path the output directory
#'
#' @return the cleaned data
#' @export
#'
#' @examples
#' \dontrun{
#' load("data/raw/titanic.csv", "output/cleaned.csv")
#' }
load <- function(file_path, output_path) {
  # load data
  data <- readr::read_csv(file_path)

  # clean data
  data <- janitor::clean_names(data)

  data

  readr::write_csv(data, output_path)

  print("finished script 1")

}



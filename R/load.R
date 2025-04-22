load <- function(file_path, output_path) {
  # load data
  data <- read_csv(file_path)

  # clean data
  data <- janitor::clean_names(data)

  data

  write_csv(data, output_path)

  print("finished script 1")

}



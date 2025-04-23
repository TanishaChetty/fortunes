## code to prepare `fortune_data` dataset goes here

fortune <- read_html("http://www.fortunecookiemessage.com/archive.php")

fortune_data <- fortune |>
  html_elements("tr+ tr a") |>
  html_text2()

fortune_data <- as.data.frame(fortune_data)


usethis::use_data(fortune_data, overwrite = TRUE)

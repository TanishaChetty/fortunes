#' @title Fortune Teller
#' @description
#' Given an input, we give you a fortune.
#' @param
#' @importFrom stringr str_length
#' @importFrom rvest html_elements
#' @importFrom rvest html_text2
#' @returns A string that contains your fortune
#' @export

fortunes <- function() {
  var = readline(prompt = "GET YOUR FORTUNE TOLD!!! Enter one of the following words: luck, treasure, omen, destiny... ")

  for (i in 1:2){
    if (str_length(var) %% 2 == 0){
      var = readline(prompt = "Enter one of the following words: sparkle, unicorn, glitter, rainbow...")

    } else {
      var = readline(prompt = "Enter one of the following words:fire, brimstone, purgatory, damnation...")
    }
  }

  x <- sample(1:50, size = 1)
  return(fortune_data[x])

}






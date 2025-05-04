#' @title Fortune Teller
#' @description
#' This function has no function argument. Call the function and follow the interactive instructions to get a fortune.
#' @importFrom stringr str_length
#' @importFrom rvest html_elements
#' @importFrom rvest html_text2
#' @returns A string that contains your fortune
#' @examples
#' fortunes()
#' @export

fortunes <- function() {
  var = readline(prompt = "GET YOUR FORTUNE TOLD!!! Enter one of the following words: luck, treasure, omen, destiny... ")

  for (i in 1:2){
    if (str_length(var) %% 2 == 0){
      var = readline(prompt = "Enter one of the following words: sparkle, unicorn, glitter, rainbow...")
      if(var != "sparkle"|"unicorn"|"glitter"|"rainbow"){
        stop("Woah! Try one of the words listed above maybe...")

      }

    } else {
      var = readline(prompt = "Enter one of the following words:fire, brimstone, purgatory, damnation...")
      if(var != "fire"|"brimstone"|"purgatory"|"damnation"){
        stop("Woah! Try one of the words listed above maybe...")
      }
  }

  x <- sample(1:50, size = 1)
  return(fortune_data[x,])

}}






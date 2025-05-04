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
  if (!(var == "luck" | var == "treasure" | var == "omen" | var == "destiny")){
    stop("Woah! Try one of the words listed above maybe...")
  }

  for (i in 1:2){
    if (str_length(var) %% 2 == 0){
      var = readline(prompt = "Enter one of the following words: sparkle, unicorn, glitter, rainbow...")
      if (!(var == "sparkle"| var == "unicorn"|var == "glitter"|var == "rainbow")){
        stop("Woah! Try one of the words listed above maybe...")

      }

    } else {
      var = readline(prompt = "Enter one of the following words:fire, brimstone, purgatory, damnation...")
      if(!(var == "fire"|var == "brimstone"|var == "purgatory"|var == "damnation")){
        stop("Woah! Try one of the words listed above maybe...")
      }
    }}

    if (str_length(var) %% 2 == 0){
      x <- sample(1:25, size = 1)
    } else {
      x <- sample(26:50, size = 1)
    }

  return(fortune_data[x,])

}






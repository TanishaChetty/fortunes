#' @importFrom utils globalVariables
utils::globalVariables("fortune_data")

#' @title Fortune Teller
#' @description
#' This function has no function argument. Call the function and follow the interactive instructions to get a fortune.
#' @param fortuney_words description
#' @param awesome_words description
#' @param evil_words description
#' @importFrom stringr str_length
#' @returns A string that contains your fortune
#' @examples
#' fortunes()
#' @export
#'

fortunes <- function(fortuney_words = NULL, awesome_words = NULL, evil_words = NULL) {

  if (is.null(fortuney_words)){
    fortuney_words = readline(prompt = "GET YOUR FORTUNE TOLD!!! Enter one of the following words: luck, treasure, omen, destiny... ")}
  if (!(fortuney_words %in% c("luck", "treasure", "omen", "destiny"))){
      stop("Woah! Try one of the words listed above maybe...")
  }

  if (is.null(awesome_words)){
    awesome_words = readline(prompt = "Enter one of the following words: sparkle, unicorn, glitter, rainbow...")}
  if (!(awesome_words %in% c("sparkle", "unicorn", "glitter", "rainbow"))){
      stop("Woah! Try one of the words listed above maybe...")

  }

  if (is.null(evil_words)){
    evil_words = readline(prompt = "Enter one of the following words:fire, brimstone, purgatory, damnation...")}
  if(!(evil_words %in% c( "fire","brimstone", "purgatory", "damnation"))){
      stop("Woah! Try one of the words listed above maybe...")

  }

  if (str_length(evil_words) %% 2 == 0) {
    x <- sample(1:25, size = 1)
    } else {
    x <- sample(26:50, size = 1)
    }

  return(fortune_data[x, ])

}

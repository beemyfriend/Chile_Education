require(pdftools)
require(dplyr)
require(stringr)

#working directory should only contain pdf files
x <- dir()
for(i in c(1:length(x))){
  text <- pdf_text(x[i])
  for(j in c(1:length(text))){
    page <- text[j]
#    page = page %>% str_replace_all('Ñ', 'N') %>%
#      str_replace_all('Õ', 'O') %>%
#      str_replace_all('Ö', 'O') %>%
#      str_replace_all('Ô', 'O') %>%
#      str_replace_all('Ü', 'U') %>%
#      str_replace_all('Û', 'U') %>%
#      str_replace_all('Ä', 'A') %>%
#      str_replace_all('Ã', 'A') %>%
#      str_replace_all('Â', 'A') %>%
#      str_replace_all('Ç', 'C') %>%
#      str_replace_all('Ê', 'E') %>%
#      str_replace_all('Ë', 'E')
    
    write(page, paste0(x[i], '_page_', j,'.txt'))
  }
}
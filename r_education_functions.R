for(i in 1:nrow(circ_geocode)){
  x = geocode(as.character(circ_geocode[i,2]))
  circ_geocode[i, 3] = x[1] 
  circ_geocode[i,4] = x[2]}

require(dplyr)
require(stringr)
require(stringdist)

rut_name_match <- function(paternal, maternal, name){
  full_name <- paste(paternal, maternal, name)
  finder <- rut_csv %>% 
    filter(str_locate(Name, paternal)[,1] == 1) %>% 
    filter(str_detect(Name, maternal)) %>% 
    mutate(str_dist = stringdist(Name, full_name)) %>%
    filter(str_dist == min(str_dist))
  if(nrow(finder) == 1){
    finder
  } else {
    do_again <- data.frame(Name = 'multiple or no matches', RUT = NA, Domicilio = NA, Circ = NA, Mesa = NA, str_dist = NA)
    do_again
  }
}

find_rut_name <- function(paa_csv){
  for(i in 1:nrow(paa_csv)){
    match = rut_name_match(paa_csv[i,1], paa_csv[i,2], paa_csv[i,3])
    paa_csv$Name[i] = match$Name
    paa_csv$RUT[i] = match$RUT
    paa_csv$Domicilio[i] = match$Domicilio
    paa_csv$Circ[i] = match$Circ
    paa_csv$Mesa[i] = match$Mesa
    paa_csv$str_dist[i] = match$str_dist
    cat(i, 'out of', nrow(paa_csv), timestamp(), '\n')
  }
  paa_csv
}
  




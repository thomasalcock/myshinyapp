get_house_data <- function(min_sq_ft, max_price){
  
  url <- paste0(
    "http://localhost:8000/getdata?",
    "min_sq_ft=",min_sq_ft,
    "&",
    "max_price=",max_price
  )
  
  res <- httr::GET(url)
  
  jsonlite::fromJSON(rawToChar(res$content))
}
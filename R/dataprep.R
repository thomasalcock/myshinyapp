
# dataprep ----------------------------------------------------------------


# clean names -------------------------------------------------------------

house_prices <- readRDS("data/real_estate_data.RDS")
house_prices <- janitor::clean_names(house_prices) %>% 
  dplyr::select(-id)
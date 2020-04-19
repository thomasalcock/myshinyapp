
# ui.R --------------------------------------------------------------------

ui <- dashboardPage(
  header = source("R/header.R", local = TRUE)$value,
  sidebar = source("R/sidebar.R", local = TRUE)$value,
  body = source("R/body.R", local = TRUE)$value
)


# body --------------------------------------------------------------------

dashboardBody(
  
  shinyDashboardThemes("grey_light"),
  
  tabItems(
    tabItem(
      tabName = "search",
      source("R/ui_overview.R", local = TRUE)$value
    ),
    tabItem(
      tabName = "analytics",
      source("R/ui_analytics.R", local = TRUE)$value
    )
  )
)

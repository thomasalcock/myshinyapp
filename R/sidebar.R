
# sidebar.R ---------------------------------------------------------------

dashboardSidebar(
  sidebarMenu(
    id = "sidebar",
    menuItem(
      text = "Search",
      tabName = "search"
    ),
    menuItem(
      text = "Analytics",
      tabName = "analytics"
    )
  )
)

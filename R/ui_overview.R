
# ui_overview.R -----------------------------------------------------------

fluidPage(
  fluidRow(
    boxPlus(
      title = "Selection criteria",
      br(),
      numericInput(
        inputId = "min_lot_area",
        label = "Minimum square footage",
        value = 4000
      ),
      br(),
      numericInput(
        inputId = "max_house_price",
        label = "Maximal House Price",
        value = 150000
      )
    ),
    boxPlus(
      title = "Items",
      DTOutput(
        outputId = "house_table"
      )
    )
  )
)

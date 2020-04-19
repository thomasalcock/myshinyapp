
# ui_overview.R -----------------------------------------------------------

fluidPage(
  fluidRow(
    boxPlus(
      title = "Selection criteria",
      br(),
      numericInput(
        inputId = "min_lot_area",
        label = "Minimum square footage",
        value = min(house_prices$lot_area)
      ),
      br(),
      numericInput(
        inputId = "max_house_price",
        label = "Maximal House Price",
        value = median(house_prices$sale_price)
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

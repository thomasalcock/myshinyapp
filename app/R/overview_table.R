
# overview table ----------------------------------------------------------

output$house_table <- renderDT({
  house_prices %>% 
    dplyr::filter(
      lot_area >= input$min_lot_area & 
      sale_price <= input$max_house_price
    ) %>% 
    dplyr::select(
      lot_area,
      dplyr::starts_with("sale")
    )
})

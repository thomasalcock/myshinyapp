
# overview table ----------------------------------------------------------

output$house_table <- renderDT({
  get_house_data(
    min_sq_ft = input$min_lot_area,
    max_price = input$max_house_price
  )
})

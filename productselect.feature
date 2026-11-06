Feature: Product configuration and checkout
  As a customer
  I want to select product options like size, color, and quantity
  So that I can add the items to my shopping cart

Given the user is on the product page

Scenario: User selects all required info successfully
  When the user selects a size, a color, has a valid total quantity (between 1 and 10 items) and clicks the buy button
  Then the items are added to the cart

Scenario: User selects more than 10 items
  When the user selects a size, a color, has a total quantity greater than 10 and clicks the buy button
  Then the page displays the message: "Ultrapassou o limite de itens para compra"

Scenario: User doesn't select size
  When the user selects only a color, has a valid total quantity and clicks the buy button
  Then the page displays the message: "Selecionar o tamanho é obrigatório"

Scenario: User doesn't select color
  When the user selects only a size, has a valid total quantity and clicks the buy button
  Then the page displays the message: "Selecionar a cor é obrigatória"

Scenario: User clicks the "Limpar" button with selected options
  When the user selects a size, a color and clicks the "Limpar" button
  Then all selected options are cleared

Scenario: User clicks the "Limpar" button without selecting any option
  When the user clicks the "Limpar" button without selecting a size or a color
  Then the page displays the message: "Nenhuma opção selecionada"
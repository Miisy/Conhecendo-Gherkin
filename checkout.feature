Feature: Checkout form validation
  As a customer ready to purchase
  I want to fill out my delivery and personal details
  So that I can successfully complete my checkout process

Scenario Outline: Validate checkout form submission with different inputs
  Given the user is on the checkout page and the cart has <quantityitem> items
  When the user fills the checkout form with <Nome>, <Sobrenome>, <País>, <Endereço>, <Cidade>, <CEP>, <Tel>, <e-mail> and clicks the "Finalizar Compra" button
  Then the system displays the message: "<message>"

Examples:
  | quantityitem | Nome      | Sobrenome | País     | Endereço | Cidade      | CEP         | Tel           | e-mail                    | message                           |
  | "1"          | "Antonio" | "Silva"   | "Brasil" | "A, 123" | "São Paulo" | "12345-678" | "11912345678" | "antonio.silva@email.com" | "Compra Finalizada"               |
  | "4"          | ""        | "Silva"   | "Brasil" | "A, 123" | "São Paulo" | "12345-678" | "11912345678" | "antonio.silva@email.com" | "Preencha o campo Nome"           |
  | "7"          | "Antonio" | ""        | "Brasil" | "A, 123" | "São Paulo" | "12345-678" | "11912345678" | "antonio.silva@email.com" | "Preencha o campo Sobrenome"      |
  | "2"          | "Antonio" | "Silva"   | ""       | "A, 123" | "São Paulo" | "12345-678" | "11912345678" | "antonio.silva@email.com" | "Preencha o campo País"           |
  | "0"          | "Antonio" | "Silva"   | "Brasil" | "A, 123" | "São Paulo" | "12345-678" | "11912345678" | "antonio.silva@email.com" | "Carrinho vazio"                  |
  | "9"          | "Antonio" | "Silva"   | "Brasil" | ""       | "São Paulo" | "12345-678" | "11912345678" | "antonio.silva@email.com" | "Preencha o campo Endereço"       |
  | "1"          | "Antonio" | "Silva"   | "Brasil" | ""       | ""          | "12345-678" | "11912345678" | "antonio.silva@email.com" | "Preencha os campos obrigatórios" |
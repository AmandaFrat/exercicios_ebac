            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha Compra

            Contexto: Dado que eu esteja na página de cadastro para finalizar a compra

            Cenário: Dados obrigatórios válidos
            Quando eu inserir os dados obrigatórios válidos
            E clicar em finalizar compra
            Então deve ser exibida uma mensagem de sucesso "Compra finalizada com sucesso"

            Cenário: Campo email com formato inválido
            Quando eu inserir o email "amanda@uhufe"
            E passar para o próximo campo a ser digitado
            Então deve exibir uma mensagem de erro: "Email inválido"

            Cenário: Campo vazio
            Quando deixar o campo vazio
            Então deve exibir uma mensagem de alerta: "Campo Inválido"

            Esquema do Cenário: Campos obrigatórios vazios
            Quando houver <campo> vazio
            Então deve ser exibida uma <mensagem> de alerta
            Exemplos:
            | Campo     | Mensagem       |
            | Nome      | Campo Inválido |
            | Sobrenome | Campo Inválido |
            | País      | Campo Inválido |
            | CEP       | Campo Inválido |
            | Telefone  | Campo Inválido |


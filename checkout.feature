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

            Esquema do Cenário: Concluir cadastro
            Quando os campos obrigatórios <Nome> <Sobrenome> <Pais> <Endereco> <Cidade> <CEP> <Telefone> <Email> forem preenchidos
            Então deve ser exibida uma <Mensagem>
            Exemplos:
            | Nome    | Sobrenome | Pais   | Endereco | Cidade  | CEP    | Telefone  | Email            | Mensagem                       |
            | Joaquim | Soares    | Brasil | Rua 1    | Vitória | 439484 | 38438439  | joaquim@ebac.com | Cadastro Realizado com sucesso |
            | Debora  | Raimundo  | Brasil | Rua 2    | Vitória |        | 48382382  | debora@ebac.com  | Campo Inválido                 |
            | Matheus | Carvalho  | Brasil | Rua 3    | Vitória | 349373 | 128198283 | matheus@fhu.com  | Email Inválido                 |


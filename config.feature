            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto: Dado que eu acesse a página do produto

            Cenário: Seleção de cor, tamanho e quantidade
            Quando eu selecionar a cor "verde", o tamanho "M" e a quantidade "2"
            Então o produto deve ser adicionado ao carrinho

            Esquema do Cenário: Seleção de campo obrigatório faltando
            Quando eu selecionar o produto
            E estiver faltando algum dos campos obrigatórios <cor> <quantidade> <tamanho>
            Então deve exibir a <mensagem> de alerta
            Exemplos:
            | cor        | quantidade | tamanho | mensagem                             |
            | "Amarela"  | "2"        |         | "Selecione o tamanho"                |
            | "Azul"     |            | "P"     | "Selecione a quantidade"             |
            |            | "1"        | "M"     | "Selecione a cor"                    |
            | "Vermelha" |            |         | "Selecione a quantidade e o tamanho" |
            |            |            | "G"     | "Selecione a cor e a quantidade"     |
            |            | "2"        |         | "Selecione a cor e o tamanho"        |

Cenário: Compra de 10 produtos por venda
Quando eu selecionar "10" produtos
E clicar em adicionar ao carrinho
Então deve exibir a mensagem: "Itens adicionados com sucesso"

Cenário: Compra de mais de 10 produtos em uma única venda
Quando eu selecionar "11" produtos
E clicar em adicionar ao carrinho
Então deve exibir uma mensagem de erro: "Só é possível adicionar 10 produtos por venda"

Cenário: Voltar o produto ao estado original
Quando eu clicar no botão "limpar"
Então o "tamanho", "cor" e "quantidade" devem voltar ao estado original do protudo



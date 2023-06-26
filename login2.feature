            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse a página de login da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu inserir meu usuário "amanda@ebac.shop"
            E a senha "123456"
            Então a página deve ser direcionada para a tela de checkout

            Esquema do Cenário: Múltiplas autenticações
            Quando eu inserir o <usuario>
            E a <senha>
            Então deve exibir uma <mensagem>
            Exemplos:
            | usuario            | senha    | mensagem                  |
            | "amanda@ebac.shop" | "123456" | "Seja Bem-vindo(a)"       |
            | "luana@ddueh"      | "123457" | "Email inválido"          |
            | "cacau@ebac.shop"  | "12"     | "Email ou Senha Inválida" |
            | "rosana@ebac.shop" | "123459" | "Seja Bem-vindo(a)"       |
            | "ingrid@edsjd"     | "1"      | "Email ou senha inválida" |



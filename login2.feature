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

            Cenário: Usuário inválido
            Quando eu inserir meu usuário "ufhuue@edijsi"
            E a senha "123456"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Cenário: Senha inválida
            Quando eu inserir meu usuário "amanda@ebac.shop"
            E a senha "seufsfi"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Múltiplas autenticações
            Quando eu inserir o <usuario>
            E a <senha>
            Então deve exibir uma <mensagem> de sucesso
            Exemplos:
            | usuario            | senha    | mensagem            |
            | "amanda@ebac.shop" | "123456" | "Seja Bem-vindo(a)" |
            | "luana@ebac.shop"  | "123457" | "Seja Bem-vindo(a)" |
            | "cacau@ebac.shop"  | "123458" | "Seja Bem-vindo(a)" |
            | "rosana@ebac.shop" | "123459" | "Seja Bem-vindo(a)" |
            | "ingrid@ebac.shop" | "123451" | "Seja Bem-vindo(a)" |



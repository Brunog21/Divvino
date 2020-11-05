#language:pt
Funcionalidade: Dado que deseje adicionar um produto

    @produto
    Cenário: Adicionar produto
    Dado que esteja na home
    E que esteja logado com "test@automation.com.br" e "123456"
    Quando pesquisar por "Cabernet"
    E adicionar o produto no carrinho
    Então deverá mostrar o produto no carrinho
    E deverá validar o preço e a quantidade do produto

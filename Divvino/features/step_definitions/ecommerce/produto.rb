Dado('que esteja logado com {string} e {string}') do |email, senha|
  @logar = $ec_pages.logar
  @logar.entrar.login(email, senha)
end

Quando('pesquisar por {string}') do |produto|
  @home = $ec_pages.home
  @home.main_header.pesquisar(produto)
end

Quando("adicionar o produto no carrinho") do
  @produto = $ec_pages.produto
  @produto_box = @produto.produto_box

  @produto_box_preco = @produto_box.get_preco
  @produto_box_quant = @produto_box.get_quantidade
 # @link_product_box = @produto_box.get_link

  @produto.produto_box.add_cart
end

Então("deverá mostrar o produto no carrinho") do
  @main_header.open_cart

  @cart_box = $ec_pages.cart_box
  @carrinho_box = @cart_box.cart_boxx

 # @carrinho_produto_link = @carrinho_box.get_link
  @carrinho_produto_preco = @carrinho_box.get_preco
  @carrinho_produto_quantidade = @carrinho_box.get_quantidade

end

Então("deverá validar o preço e a quantidade do produto") do
  price_prod_cart = @carrinho_box.get_preco
  qtt_prod_cart = @carrinho_box.get_quantidade

  expect(price_prod_cart).to eql @produto_box_preco
  expect(qtt_prod_cart).to eql @produto_box_quant
end


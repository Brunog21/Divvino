require_relative "../../sections/produtos/product_box.rb"

module Ecommerce
  module Pages
    module Produtos
      class Produto < SitePrism::Page
        section :produto_box, Ecommerce::Sections::Produtos::ProdutoBox, ".js-box-product", match: :first
      end
    end
  end
end

require_relative '../../sections/headers/main_header.rb'
#require_relative '../../sections/cart/cart_box.rb'

module Ecommerce
  module Pages
    module Home
      class Home < SitePrism::Page
        set_url '/'

        section :main_header, Ecommerce::Sections::Headers::MainHeader, '.navbar_fixed_top'
       # section :cart_section, Ecommerce::Sections::Cart::ProdutoCart, "#cartContentHeader"
       # section :carrinho, Ecommerce::Sections::Cart::Carrinho, "#cartContentHeader"

      end
    end
  end
end

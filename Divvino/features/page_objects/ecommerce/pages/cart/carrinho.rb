require_relative "../../sections/cart/cart_box.rb"

module Ecommerce
  module Pages
    module Cart
      class CartBox < SitePrism::Page
        section :cart_boxx, Ecommerce::Sections::Cart::CartBox, ".content"
      end
    end
  end
end

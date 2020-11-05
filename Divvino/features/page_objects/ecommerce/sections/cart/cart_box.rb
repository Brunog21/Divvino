module Ecommerce
  module Sections
    module Cart
      class CartBox < SitePrism::Section
        element :link, '.s90 a'
        element :price_prod, "#footer-valor-total"
        element :quantidade, 'span[id*=quantityCart-]'

        def get_link
          link[:href]
        end

        def get_preco
          price_prod.text.delete('R$ ').tr(',','.')
        end


        def get_quantidade
          quantidade.text
        end

      end
    end
  end
end

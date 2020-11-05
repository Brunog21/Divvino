module Ecommerce
  module Sections
    module Headers
      class MainHeader < SitePrism::Section
        element :login, '#loginAutoUser'
        element :barra_pesquisa, '#search_box_desktop'
        element :btn_lupa, '.icon-lupa'
        element :cart_btn, ".icon-cx_vinho"

        def logar
          login.gclick
        end

        def pesquisar(produto)
          barra_pesquisa.gset produto
          btn_lupa.gclick
        end

        def open_cart
          cart_btn.gclick
        end

      end
    end
  end
end

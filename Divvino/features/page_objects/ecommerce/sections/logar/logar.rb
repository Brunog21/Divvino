module Ecommerce
  module Sections
    module Logar
      class Entrar < SitePrism::Section

        element :usuario, '#user'
        element :pasword, 'input[name=pass]'
        element :btn_submit, '#loginSubmit'
        element :confir, '.top_menu'

        def login(email, senha)
          usuario.gset email
          pasword.gset senha
          btn_submit.gclick
      end

      end
    end
  end
end


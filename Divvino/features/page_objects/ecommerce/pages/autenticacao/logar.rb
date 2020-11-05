require_relative '../../sections/logar/logar.rb'

module Ecommerce
  module Pages
    module Autenticacao
      class Logar < SitePrism::Page
        set_url '/'

        section :entrar, Ecommerce::Sections::Logar::Entrar, "#formLogin"

      end
    end
  end
end

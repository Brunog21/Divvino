Dir[File.join(File.dirname(__FILE__), 'page_objects/ecommerce/pages/*.rb')]
  .sort.each { |file| require file }

module Ecommerce
  module Pages
    class ECPages
      class << self
        def home
          Ecommerce::Pages::Home::Home.new
        end
      end
    end
  end
end


module Ecommerce
  module Pages
    class ECPages
      class << self
        def logar
          Ecommerce::Pages::Autenticacao::Logar.new
        end
      end
    end
  end
end

module Ecommerce
  module Pages
    class ECPages
      class << self
        def produto
          Ecommerce::Pages::Produtos::Produto.new
        end
      end
    end
  end
end

module Ecommerce
  module Pages
    class ECPages
      class << self
        def cart_box
          Ecommerce::Pages::Cart::CartBox.new
        end
      end
    end
  end
end

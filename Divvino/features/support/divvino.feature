#language:pt
Funcionalidade: Fazer login
    Sendo um cliente
    Faço login
    Para adicionar um produto

    @logar
    Cenário: login
    Dado que esteja na home
    Quando realizar login com "test@automation.com.br" e "123456"
    Então será exibido "OLÁ, AUTOMATION1822"

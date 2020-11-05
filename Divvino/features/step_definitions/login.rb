Quando('realizar login com {string} e {string}') do |email, senha|
  @logar = $ec_pages.logar
  @logar.entrar.login(email, senha)
end

Então('será exibido {string}') do |mensagem|
  confir = find('.top_menu')
  expect(confir).to have_content mensagem
end

Capybara.register_driver :selenium do |app|
  	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Dado(/^que eu acessei a pagina do google$/) do
  visit "http://www.google.com.br"
end

Quando(/^eu digitar uma pesquisa$/) do
  fill_in 'q', with: 'teste'
end

Então(/^o google me trará resultados$/) do
  # falta entender como fazer essa validação de uma maneira melhor
  expect(page).to have_content 'test'
end

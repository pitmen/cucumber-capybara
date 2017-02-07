Dado(/^que eu acessei a pagina do google$/) do
  visit "http://www.google.com.br"
end

Quando(/^eu digitar uma pesquisa$/) do
  fill_in 'q', with: 'teste'
  find('#lst-ib').native.send_keys(:return)
  sleep 5
end

Então(/^o google me trará resultados$/) do
  # falta entender como fazer essa validação de uma maneira melhor
  expect(page).to have_content 'test'
  expect(page).to have_css('.g')
end

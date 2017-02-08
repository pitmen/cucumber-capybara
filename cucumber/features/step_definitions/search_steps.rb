#Steps 
Dado(/^que eu acessei a pagina do google$/) do
  visit "/"
  $logger.info'Acessou a url'
end

Quando(/^eu digitar uma pesquisa$/) do
  #fill_in 'q', with: 'teste'
  # dá um "enter" no campo
  #find('#lst-ib').native.send_keys(:return)
  @google = GooglePage.new
  
  # verificar o título da página
  expect(@google.get_title).to eq 'Google'
 
  @google.fazer_pesquisa('teste')
  $logger.info'Fez a pesquisa'
end

Então(/^o google me trará resultados$/) do
  begin
    expect(page).to have_content 'test'
    expect(page).to have_css('.g')
    $logger.info'Pesquisa validada'
  rescue  Exception => e
    $logger.warn 'Erro: ' << e.message
    raise 'Teste falhou. Veja o log' 
  end  
end

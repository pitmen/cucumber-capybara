# classe que representa a página do google
class GooglePage < SitePrism::Page
    element :campo_busca, "input[name='q']"

    # faz a pesquisa
    def fazer_pesquisa(pesquisa)
        campo_busca.set pesquisa
        campo_busca.native.send_keys(:return)  
    end

    def get_title
        page.title
    end

end

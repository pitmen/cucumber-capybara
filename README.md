# Como rodar na sua máquina

Como o projeto é desenvolvido em Ruby, é necessário que você tenha o Ruby instalado 
na sua máquina. Esse tutorial é bem legal. Não precisa fazer até o final, basta instalar o Ruby.

> https://nandovieira.com.br/configurando-ruby-rails-mysql-e-git-no-windows

Pelo Terminal, acesse a pasta do projeto. 

Instale o bundler

> gem install bundler

Como o arquivo GEMFILE já possui as dependências que vamos precisar, dê um bundle install

> bundler install

Para executar o projeto:

> cucumber

E você terá o seguinte resultado:
```
1 scenario (1 passed)

3 steps (3 passed)

0m9.135s
```

Pronto!

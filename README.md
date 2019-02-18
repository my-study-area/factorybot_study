# FactoryBot Study
```sh
rails new factorybot_study -d mysql -T # cria o projeto rails sem a pasta padrão de testes
```
- altere o usuário e senha do banco de dados mysql no arquivo: `config/database.yml`
- crie os bancos de dados: `rails db:create`
- instale o `rspce`: [https://www.rubydoc.info/gems/rspec-rails](https://www.rubydoc.info/gems/rspec-rails)
```sh
bundle install
rails generate rspec:install
```

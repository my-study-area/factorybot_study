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
- instale o factory-bot_rails
  - adicione em seu `Gemfile`: `gem 'rspec-rails', '~> 3.7'`
  - instale as dependências: `bundle install`
  - crie o arquivo: `spec/support/factories/factory_bot.rb`:
  ```rb
  RSpec.configure do |config|
    config.include FactoryBot::Syntax::Methods
  end
  ```
  - adicione em seu `spec/rails_helper.rb`: `Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }`. Isso carregará a configuração do FactoryBot em seu rspec.
  - crie um model: `rails g model User name email password`
  - crie a migration: `rails db:migrate`
  - crie a sua factory: `spec/factories/user.rb` com seguinte conteúdo:
  ```rb
  FactoryBot.define do
    factory :user do
      name { "Adriano" }
      email  { "adriano@email.com" }
      password { '123' }
    end
  end
  ```
  - adicione o teste `spec/models/user_spec.rb`:
  ```rb
  require 'rails_helper'

  RSpec.describe User, type: :model do
    let(:user) { user = build(:user) }
    it 'have_attributes' do
      expect(user).to have_attributes(
        :name => 'Adriano',
        :email => 'adriano@email.com',
        :password => '123'
      )
    end
  end
  ```

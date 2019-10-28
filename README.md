### README

Repositório criado com base no curso da Udemy:
**Ruby on Rails REST API: The Complete Guide using Test Driven Development**

Rails version: 6.0.0
Ruby version: ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux]

#### RSpec-Rails
Instalar  a gem **rspec-rails** e rodar o generator
    
    rails g rspec:install
    
#### Factory Bot
Opcional, aicionar a seguinte linha em rails_helper.rb, torna desnecessário digitar "FactoryBot" como prefixo aos comandos nos specs

     config.include FactoryBot::Syntax::Methods

Ex:

      article = FactoryBot.build :article, title: ''

Passa a ser:

          article = build :article, title: ''


#### Model Serializer

Gem **fast_jsonapi** by Netflix
Gerar serializer informados propriedades do modelo eg:
        
    rails g serializer article title content slug
### Status codes

200 :ok                         success message for GET requests
201 :created                    resource successfully created  
204 :no_content                 usually for update & destroy actions
401 :not_authorized             no authentication or invalid one
403 :forbiden                   no permission for this action
404 :not_found                  the requested resource can't be found
422 :unprocessable_entity       the processed resource is invalid
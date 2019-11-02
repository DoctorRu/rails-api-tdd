### README

Repositório criado com base no curso da Udemy:
**Ruby on Rails REST API: The Complete Guide using Test Driven Development**

Rails version: 6.0.0
Ruby version: ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux]

#### Rspec methods

Describe com "#" indica testes de objeto (instância), 
com "." indica testes de classe

ex:

    describe '#validations' do 
        it 'should test that the factory is valid' do
            expect(build :article).to be_valid
        end 
    end

    describe '.recent' do
        it 'should list recent article first' do
            old_article = FactoryBot.create :article
            newer_article = create :article
            expect(described_class.recent).to 
        end
    end


#### RSpec-rails
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
Gerar serializer informando Model e  propriedades ex:
        
    rails g serializer Article title content slug

Criar con controller relativo  o método **serializer** contendo o **ModelSerializer** ex:

    def serializer
        ArticleSerializer
    end


Especificar no render json o serializer a ser usado, ex:

    def index
        articles = Article.all
        render json: serializer.new(articles)
    end

    def show
        render json: serializer.new(Article.find(params[:id]))
    end
    
### Status codes

    200 :ok                         success message for GET requests
    201 :created                    resource successfully created  
    204 :no_content                 usually for update & destroy actions
    401 :not_authorized             no authentication or invalid one
    403 :forbiden                   no permission for this action
    404 :not_found                  the requested resource can't be found
    422 :unprocessable_entity       the processed resource is invalid
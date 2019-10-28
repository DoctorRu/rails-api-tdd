require 'rails_helper'

RSpec.describe Article, type: :model do
  
  # Group test by type eg: describe #validations
  describe '#validations' do 
    it 'should test that the factory is valid' do
      expect(build :article).to be_valid
    end

    it 'snould validate the presence of the title' do
      article = FactoryBot.build :article, title: ''
      expect(article).not_to be_valid
      expect(article.errors.messages[:title]).to include("can't be blank")
    end

    it 'snould validate the presence of the content' do
      article = FactoryBot.build :article, content: ''
      expect(article).not_to be_valid
      expect(article.errors.messages[:content]).to include("can't be blank")
    end

    it 'snould validate the presence of the slug' do
      article = FactoryBot.build :article, slug: ''
      expect(article).not_to be_valid
      expect(article.errors.messages[:slug]).to include("can't be blank")
    end

    it 'should validate uniqueness of the slug' do
      article = create :article
      invalid_article = build :article, slug: article.slug
      expect(invalid_article).not_to be_valid
    end
  end
end

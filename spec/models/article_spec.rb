require 'rails_helper'

RSpec.describe Article, type: :model do

  describe "#validations" do
    let(:article) {build(:article)}

    it 'tests that factory is valid' do
      expect(article).to be_valid
      expect(article.title).to eq("Sample Article 1")
    end

    it 'has an invalid title' do
      article.title = ""
      expect(article).not_to be_valid
      expect(article.errors[:title]).to include("can't be blank")
    end

    it 'has an invalid slug' do
      article.slug = ""
      expect(article).not_to be_valid
      expect(article.errors[:slug]).to include("can't be blank") 
    end

    it 'has an invalid content' do
      article.content = ""
      expect(article).not_to be_valid
      expect(article.errors[:content]).to include("can't be blank")
    end

    it 'has an same slug' do
      article = create(:article)
      second_article = build(:article, slug: article.slug)

      expect(second_article).not_to be_valid
      expect(second_article.errors[:slug]).to include("has already been taken")
    end
  end
end

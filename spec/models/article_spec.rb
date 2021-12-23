require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'tests article object' do
    #expect(1).to be_positive
    #expect(5).to be > 3
    #article = Article.create({title:"Sample article", content:"aaa"})

    article = create(:article)

    expect(article.title).to eq("Sample article")
  end
end

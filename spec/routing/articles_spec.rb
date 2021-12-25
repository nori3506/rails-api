require  'rails_helper'

RSpec.describe "/articles routes" do
  it 'routes to articles#index' do
    aggregate_failures do
      expect(get "/articles").to route_to(controller: 'articles', action: 'index')
      expect(get '/articles').to route_to('articles#index')
    end
  end

  it 'routes to articles#show' do
    expect(get "/articles/1").to route_to(controller: "articles", action: "show", "id"=>"1")
  end
end

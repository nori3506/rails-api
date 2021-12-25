Rails.application.routes.draw do
  # get '/articles', to: 'articles#index'
  resources :articles, only: %i[index]
end

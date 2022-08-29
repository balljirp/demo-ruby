Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/pdf/show', to: 'pdf#show'
  get '/pdf/', to: "pdf#index"
  get "/articles", to: "articles#index"
end

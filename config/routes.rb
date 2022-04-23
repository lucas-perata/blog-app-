Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  root "articles#index"

  resources :articles do 
    resources :comments
  end 

  get "/articles", to: "articles#index"
  get 'articles/show/:id', to: 'articles#show'

  
end

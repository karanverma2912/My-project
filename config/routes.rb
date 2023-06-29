Rails.application.routes.draw do
  root 'clients#index'
  # get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/:status', to: 'users#index' #,  foo: 'activated'
  get '/clients/login', to: 'clients#login'
  # post '/show', to: 'clients#show'
  post '/is_login' => 'clients#is_login'
  resources :users
  resources :clients

end

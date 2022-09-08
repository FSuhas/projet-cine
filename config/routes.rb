Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/candidat', to: 'candidats#candidat'
  post '/candidat', to: 'candidats#update'
  get '/candidat/:id', to: 'candidats#show', as: :candidat_show
end

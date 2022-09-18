Rails.application.routes.draw do
  devise_for :candidats
  devise_for :users
  root to: "pages#home"

  get "/index", to: "pages#index"

  post '/candidat/:id', to: 'candidats#update', as: :candidat
  get '/candidat/:id', to: 'candidats#show', as: :candidat_show
end

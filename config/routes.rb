Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/index", to: "pages#index"
  get '/candidat', to: 'candidats#candidat'
  post '/candidat', to: 'candidats#update'
  get '/candidat/:id', to: 'candidats#show', as: :candidat_show
end

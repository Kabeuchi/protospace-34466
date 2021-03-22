Rails.application.routes.draw do
  devise_for :users

  root to: "prototypes#index"
 
  post '/prototypes/new' =>'prototypes#create'

  post '/prototypes/:id/edit' =>'prototypes#show'


  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy ] do
    resources :comments, only: [:create]
  end

  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

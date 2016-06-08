Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root 'home#index'

  get '/users', to: 'users#index'
  get '/users/me', to: 'users#show'
  get '/users/:id', to: 'users#show', as: :user
end

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root 'home#index'

  get '/users', to: 'home#user'
end

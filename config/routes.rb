require 'sidekiq/web'

Rails.application.routes.draw do

  resources :stops

  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'persons/profile'
  resources :brands
  resources :products

  get 'persons/profile', as: 'user_root'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

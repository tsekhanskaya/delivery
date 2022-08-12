# frozen_string_literal: true

Rails.application.routes.draw do
  get 'carts/show'
  resources :orders
  resources :restaurants
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # devise_for :users do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  #   get 'sign_in', to: 'devise/sessions#new'
  # end

  get 'persons/profile'
  resources :brands
  resources :products

  root to: 'products#index'

  # get 'persons/profile', as: 'user_root'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

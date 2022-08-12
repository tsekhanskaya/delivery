# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'products#index'

  get 'carts/show'
  resources :orders
  resources :restaurants
  devise_for :users

  get 'carts/:id' => 'carts#show', as: 'cart'
  delete 'carts/:id' => 'carts#destroy'

  post 'line_items/:id/add' => 'line_items#add_quantity', as: 'line_item_add'
  post 'line_items/:id/reduce' => 'line_items#reduce_quantity', as: 'line_item_reduce'
  post 'line_items' => 'line_items#create'
  get 'line_items/:id' => 'line_items#show', as: 'line_item'
  delete 'line_items/:id' => 'line_items#destroy'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get 'persons/profile'
  resources :brands
  resources :products
end

# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'products#index'

  resources :brands
  resources :products
  resources :orders
  resources :restaurants

  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end

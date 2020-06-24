Rails.application.routes.draw do
  devise_for :users
  root 'products#edit'
  resources :products, only: [:index, :show, :edit, :destroy]
  resources :users, only: [:index, :show]
  resources :cards, only: [:index]
end

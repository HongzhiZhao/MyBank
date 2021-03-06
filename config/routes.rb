Rails.application.routes.draw do

  resources :children
  resources :parents
  devise_for :users

  resources :accounts, only: [:create, :index, :show, :destroy] do 
    resources :requests, only: [:create, :index, :show, :destroy]
    resources :transactions, only: [:create, :index, :show, :destroy]
    resources :tasks 
  end 
end

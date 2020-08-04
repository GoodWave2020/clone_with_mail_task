Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :pictures
  resources :users, only: [:new, :create, :edit, :update, :show]
end

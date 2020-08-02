Rails.application.routes.draw do
  resources :pictures
  resources :users, only: [:new, :create, :edit, :update, :show]
end

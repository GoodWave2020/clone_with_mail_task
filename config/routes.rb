Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :users, only: [:new, :create, :edit, :update, :show]
  resources :favorites, only: [:create, :destroy, :show]
  get '/users/:id/favorites', to: 'users#favorites'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  root 'sessions#new'
end

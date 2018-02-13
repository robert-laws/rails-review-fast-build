Rails.application.routes.draw do
  resources :authors
  resources :books

  resources :publishers, only: [:index, :show, :new, :create]

  root 'authors#index'
end

Rails.application.routes.draw do
  get 'lists/create'
  get 'lists/index', to: 'lists#index'
  resources :lists, only: :update

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :todos do
    resources :lists, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'todos#index'

end

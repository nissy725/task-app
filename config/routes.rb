Rails.application.routes.draw do
  devise_for :users
  get 'tasks/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  resources :users, only: [:index, :show, :edit, :update]
  resources :customers, only: [:index, :new, :create, :destroy, :edit, :update]
end

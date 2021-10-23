Rails.application.routes.draw do
  get 'home/index'
  get 'home/about'
  resources :task_categories
  resources :categories
  resources :tasks
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
end

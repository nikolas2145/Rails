Rails.application.routes.draw do
  resources :tags
  root 'home#index'

  resources :projects do
    resources :tasks
  end
  namespace :project do
    resources :tasks
  end
  get 'tasks/alltasks'
  get 'home/only_comp'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

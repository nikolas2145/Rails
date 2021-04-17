Rails.application.routes.draw do
  resources :tasks do
    resources :tags
  end
  namespace :task do
    resources :tags
  end
  root 'home#index'
  get 'tasks/delete'
  get 'tags/delete'

  resources :projects do
    resources :tasks
  end
  resources :tasks do
    end

  get 'home/alltasks' #Tasks
  get 'home/only_comp' #tasks
  get 'home/only_uncomp' #tasks
  get 'home/search' #search
  get 'home/alltags'# Tags

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

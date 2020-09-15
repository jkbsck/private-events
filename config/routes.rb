Rails.application.routes.draw do

  get 'events/new'
  get 'events/create'
  get 'events/show'
  get 'events/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :sessions

  root 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

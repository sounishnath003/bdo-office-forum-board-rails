require 'sidekiq/web'

Rails.application.routes.draw do
  resources :galleries, only: [:index]
  resources :departments, only: [:index, :show]
  get 'users/index'
  get 'users/show'
  get 'user/show'
  get 'user/index'
  resources :notices, only: [:index, :show]
  namespace :admin do
      resources :users
      resources :notices
      resources :notifications
      resources :services
      resources :announcements
      resources :departments
      resources :galleries


      root to: "users#index"
    end
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end

  mount Thredded::Engine => '/forum'
  post 'create_user' => 'users#create', as: :create_user  


  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }, except: [:create]
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

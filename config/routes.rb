ImageUploadDemo::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :photos

  authenticated :user do
    root :to => 'photos#index'
  end
  root :to => "photos#index"
  devise_for :users
  ActiveAdmin.routes(self)

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  ActiveAdmin.routes(self)
end

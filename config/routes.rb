ImageUploadDemo::Application.routes.draw do
  resources :photos

  authenticated :user do
    root :to => 'photos#index'
  end
  root :to => "photos#index"
  devise_for :users

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end

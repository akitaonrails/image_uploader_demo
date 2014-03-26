ImageUploadDemo::Application.routes.draw do
  resources :photos

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end

Rails.application.routes.draw do
  resources :errorlogs
  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"

  resources :loguploads
  resources :data
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "data#index"
end

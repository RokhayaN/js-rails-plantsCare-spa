Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do 
      resources :plants, only: [:index, :show, :create, :update]  do
      resources :cares
      end 
      resources :cares, only: [:index, :create]
     end
    end 
  end

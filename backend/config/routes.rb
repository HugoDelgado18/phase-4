Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :vans
      resources :van_images, only: [:show]
      resources :images, only: [:show]
      resources :reviews
    end
  end
end

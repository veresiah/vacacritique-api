Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :categories, only: [:index, :create, :destroy]
      resources :reviews, only: [:index, :create, :destroy]
    end 
  end 
end

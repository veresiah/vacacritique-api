Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :categories, only: [:index, :create, :destroy]
      resources :reviews, only: [:index, :create, :destroy]
    end 
  end 
end

#endpoints 
# http://localhost:3000/api/v1/categories
# http://localhost:3000/api/v1/reviews
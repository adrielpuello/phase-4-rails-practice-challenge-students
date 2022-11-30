Rails.application.routes.draw do
  
resources :instructor, only: [:index, :show, :create, :update, :destroy]
resources :student, only: [:index, :show, :create, :update, :destroy]
end

Rails.application.routes.draw do
  devise_for :users
  root 'blogs#index'
  resources :users
  resources :blogs do
  	resource :likes, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'search/index'
  #get 'home/index'
  
  root to: 'home#index'
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :destroy, :edit, :update]
  get 'search' => 'search#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

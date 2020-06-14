Rails.application.routes.draw do
  root "post_images#index"
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show] do
    resources :post_comments, only: [:create, :destroy]
  end
  
  resources :post_images, only: [:new, :create, :index, :show] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
end

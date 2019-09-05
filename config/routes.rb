Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'favorites/update'

  # root to: 'posts#index'
  

  resources :posts do
    member do
      put "like" => "posts#vote"
    end
    # post 'comments', to: 'comments#create'
    resources :comments, only: [:create, :destroy]
  end
  get '/posts/favorites', to: 'posts#favorites', as: 'favorites'

  resources :shippings

  root to: 'buys#index'
  resources :buys do
    # post 'buycomments', to: 'buycomments#create'
    resources :buycomments, only: [:create, :destroy]
  end
  get '/buys/iwrotes', to: 'buys#iwrotes', as: 'iwrotes'

  
end

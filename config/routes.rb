Rails.application.routes.draw do
  
  get 'buy_users/buy_users'

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


  
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :users, only: [:index, :new, :create, :destroy, :show, :edit, :update]
    resources :artworks, only: [:new, :create, :destroy, :show, :edit, :update]
    resources :artwork_shares, only: [:index, :create, :destroy, :show, :update]
    resources :comments, only: [:index, :create, :destroy]
   # get 'users/:user_id/artworks', to: 'artworks#index'
    
    resources :users do 
      member do
        get 'artworks', to: 'artworks#index'
        patch 'favorite_artwork/:art_id', to: 'users#favorite'
        patch 'favorite_share/:art_id', to: 'users#favorite_share'
        # get 'liked_artworks'
        # post 'like_artwork'
      end
    end
end

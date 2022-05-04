Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :users, only: [:index, :create, :destroy, :show, :update]
    resources :artworks, only: [:create, :destroy, :show, :update]
    resources :artwork_shares, only: [:index, :create, :destroy, :show, :update]
    resources :comments, only: [:index, :create, :destroy]
    get 'users/:user_id/artworks', to: 'artworks#index'
end

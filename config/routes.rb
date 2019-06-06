Rails.application.routes.draw do
  resources :artworks
  resources :artists
  root to: 'artists#index'
end

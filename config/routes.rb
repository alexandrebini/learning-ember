Photoblog::Application.routes.draw do
  root to: 'assets#index'
  resources :comments
  resources :photos
end

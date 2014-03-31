Whitewalls::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'

  resources :artists, only: :show
  
  resources :artworks, only: :show

end

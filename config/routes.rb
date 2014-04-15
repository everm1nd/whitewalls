Whitewalls::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'

  get 'about', to: 'home#about', as: :about
  get 'contacts', to: 'home#contacts', as: :contacts

  resources :artists, only: :show
  
  resources :artworks, only: :show

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Generated model routes
  resources :stores
  resources :assignments
  resources :employees

  root to: 'home#home', as: :home
  
end

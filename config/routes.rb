Rails.application.routes.draw do
  resources :stores
  resources :assignments
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Generated model routes
  resources :stores
  resources :assignments
  resources :employees

  root to: 'home#home', as: :home
  get "active" , to: "stores#active" , as: :store_active
  get "inactive" , to: "stores#inactive" , as: :store_inactive
  get "alphabetical" , to: "stores#alphabetical" , as: :store_alphabetical
  
  get "active1" , to: "employees#active1" , as: :employee_active
  get "inactive1" , to: "employees#inactive1" , as: :employee_inactive
  get "alphabetical1" , to: "employees#alphabetical1" , as: :employee_alphabetical


  

  
end

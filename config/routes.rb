Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Generated model routes
  resources :stores
  resources :assignments
  resources :employees

  root to: 'home#home', as: :home
  get "active" , to: "stores#active" , as: :store_active
  get "inactive" , to: "stores#inactive" , as: :store_inactive

  get "active1" , to: "employees#active1" , as: :employee_active
  get "inactive1" , to: "employees#inactive1" , as: :employee_inactive
  get "under18" , to: "employees#under18" , as: :employee_younger_than_18
  get "above18" , to: "employees#above18" , as: :employee_is_18_or_older
  get "regEmployees", to: "employees#regEmployees" , as: :employee_regulars
  get "manEmployees", to: "employees#manEmployees" , as: :employee_managers
  get "adEmployees", to: "employees#adEmployees" , as: :employee_admins

  



  get "current" , to: "assignments#current" , as: :assignment_current
  get "past" , to: "assignments#past" , as: :assignment_past



  

  
end

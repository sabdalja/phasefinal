Rails.application.routes.draw do
  resources :users
  resources :store_flavors
  resources :flavors
  resources :shift_jobs
  resources :jobs
  resources :shifts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Generated model routes
  resources :stores
  resources :assignments
  resources :employees
  resources :users
  resources :flavors
  resources :store_flavors
  resources :shifts
  resources :shift_jobs
  resources :jobs
  resources :demos



  root to: 'home#home', as: :home

 # root to: 'home#home', as: :home
 #resources :demos, only: [:new, :create, :destroy]
  #get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'demos#new', as: 'login'
  get 'logout', to: 'demos#destroy', as: 'logout'

  root 'demos#new'
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


  get "upcoming" , to: "shifts#upcoming" , as: :shift_upcoming
 # get "past1" , to: "shifts#past1" , as: :shift_past
  get "bystore" , to: "shifts#bystore" , as: :shift_by_store
  get "byemployee" , to: "shifts#byemployee" , as: :shift_by_employee
  get "chronological" , to: "shifts#chronological" , as: :shift_chronological

  
  
  
    get "active2" , to: "jobs#active2" , as: :job_active

 
 resources :demos, only: [:new, :create, :destroy]
 #root 'demos#new'
  
  

  
end

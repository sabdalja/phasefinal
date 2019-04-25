class DemosController < ApplicationController
    def new
    end
    
    def create
        puts params[:demo][:email]
        puts params[:demo][:password]
        user = User.find_by(email: params[:demo][:email].downcase) 
        if user && user.authenticate(params[:demo][:password])
          login(user)
          
        if logged_in? and current_user.employee.role=="admin"
            redirect_to admin_employees_path 
        elsif logged_in? and current_user.employee.role=="manager"
            redirect_to manager_employees_path
        elsif logged_in? and current_user.employee.role=="employee"
            redirect_to regular_employees_path
        
        else
            redirect_to home_path
        end
    else
        flash.now[:danger] = "Invalid email and/or password"
        render 'home'
        end
    end
    
    def destroy
        
    end
        
end
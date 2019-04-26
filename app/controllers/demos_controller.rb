class DemosController < ApplicationController
    def new
    end

    def create
        user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password])
          session[:employee_id] = user.employee.id
          redirect_to root_url, notice: "You are Logged in!"
        else
          flash.now[:alert] = "Email or password is invalid"
          render "new"
        end
    end
      
        
    
    def destroy
        session[:employee_id] = nil
        redirect_to root_url, notice: "You have been Logged out!"

    end


 
end
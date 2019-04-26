class DemosController < ApplicationController
    def new
    end

   
     def create
      user = User.find_by(email: params[:demo][:email].downcase) 
      if user && user.authenticate(params[:demo][:password])
          session[:employee_id] = user.employee.id
          redirect_to home_path
      else
          flash.now[:danger] = "Invalid email or password"
          render 'new'
      end
    end
      
        
    
    def destroy
        session[:employee_id] = nil
        redirect_to root_url, notice: "You have been Logged out!"

    end


 
end
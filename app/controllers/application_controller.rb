class ApplicationController < ActionController::Base
  helper_method :valid_employee
  
  #To ensure that no imposters are able to login with fake information
  protect_from_forgery with: :exception

  before_action :require_login, except: :login_path
  
  def valid_employee
    if session[:employee_id]
      @valid_employee ||= Employee.find(session[:employee_id])
    else
      @valid_employee = nil
    end
  end

 # private
  def require_login
    if valid_employee.nil? then
    end
  end
end

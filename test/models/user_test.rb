require 'test_helper'

class UserTest < ActiveSupport::TestCase
    should belong_to(:employee)
    should validate_presence_of(:email)
    should validate_presence_of(:password_digest)
    should validate_presence_of(:employee_id)
    should validate_uniqueness_of(:email)
   # should validate_presence_of(:employee_id)
    should have_secure_password
    
    
     # tests for email
 
    should allow_value("sabdalja@qatar.cmu.edu").for(:email)
    should allow_value("sabdalja@gmail.com").for(:email)
    should allow_value("sabdalja@cmu.edu").for(:email)
    should_not allow_value(nil).for(:email)

    context "Creating a context for employees" do
    # create the objects I want with factories
    setup do 
      create_users
    end
    
    # and provide a teardown method as well
    teardown do
      remove_users
    end
    
    
   
  end
end

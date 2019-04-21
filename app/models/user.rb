class User < ApplicationRecord
    
    belongs_to(:employee)
    validates_presence_of(:email)
    validates_presence_of(:password_digest)
    validates_presence_of(:employee_id)
    validates_uniqueness_of(:employee_id)
    validates_uniqueness_of(:email)
    

    
end

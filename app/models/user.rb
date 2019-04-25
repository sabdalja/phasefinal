class User < ApplicationRecord
    
    belongs_to(:employee)
    validates_presence_of(:email)
    validates_presence_of(:password_digest)
    validates_presence_of(:employee_id)
    validates_uniqueness_of(:email)
    validates_presence_of :employee_id, on: :create 
    has_secure_password 
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "only allows valid emails" }
    validate :employee_is_active_in_system, on: :create

    def employee_is_active_in_system
        all_active_employees = Employee.active.all.map{|e| e.id}
        unless all_active_employees.include?(self.employee_id)
          errors.add(:employee_id, "is not an active employee at the creamery")
        end
    end

end

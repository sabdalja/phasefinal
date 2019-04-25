class Shift < ApplicationRecord
    belongs_to(:assignment)
    has_many(:shift_jobs)
   
    has_one :store, through: :assignment  
    has_one :employee, through: :assignment  

    has_many :jobs, through: :shift_jobs
  

    validates_presence_of(:date)
    validates_presence_of(:start_time)
    validates_presence_of(:assignment_id)
    validates_date :date, on_or_before: lambda { Date.current }, on_or_before_message: "cannot be in the future"
    validates_date :date, :on_or_after => Date.current, on: :create
    validates_date :end_time, after: :start_time, :after_message => 'must be after start_time', allow_blank: true
    

    scope :past, -> { where("date < ?", Date.current) }
    scope :upcoming, -> { where("date >= ?", Date.current) }
    scope :by_store, -> { joins(:store).order('name') }
    scope :by_employee, -> { joins(:employee).order('last_name, first_name') }
    scope :chronological, -> { order('date ASC') }
    scope :for_store, ->(store_id) { where("store_id = ?", store_id) }
    scope :for_employee, ->(employee_id) { where("employee_id = ?", employee_id) }
    scope :for_next_days, ->(x) { where("date between ? and ?", Date.current, Date.current+x) }
    scope :for_past_days, ->(x) { where("date between ? and ?", Date.current-x, Date.current-1) }


    def start_now 
        self.update_attribute(:start_time, Time.now)
    end
    
    def end_now 
        self.update_attribute(:end_time, Time.now)
    end
    

    

end

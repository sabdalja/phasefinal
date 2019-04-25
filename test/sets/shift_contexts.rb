module Contexts
  module ShiftContexts
    # Context for shifts 
    def create_shifts
     # @first_shift = FactoryBot.create(:shift)
     puts "shifts"
     puts @assign_kathryn
      @second_shift = FactoryBot.create(:shift, date: 1.months.ago.to_date, start_time: 1.months.ago.to_date, end_time: 1.months.ago.to_date, assignment: @assign_kathryn)
      puts @second_shift
      puts "shift context"
      puts @assign_ben 
      @third_shift = FactoryBot.create(:shift, date: 4.months.ago.to_date ,start_time: 4.months.ago.to_date + 10.hours, end_time: 4.months.ago.to_date + 12.hours , assignment: @assign_ben, notes:"Ben did a good job here")
      puts @third_shift + "third"
      @fourth_shift = FactoryBot.create(:shift, date: Date.today ,start_time: Date.today + 3, assignment: @assign_ben)
      puts @fourth_shift + "fourth"
    end
    
    def remove_shifts
     # @first_shift.destroy
     
      @second_shift.destroy
      @third_shift.destroy
      @fourth_shift.destroy
    end

  
  end
end
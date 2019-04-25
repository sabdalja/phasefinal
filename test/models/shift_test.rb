require 'test_helper'

class ShiftTest < ActiveSupport::TestCase
  should belong_to(:assignment)
  should have_many(:shift_jobs)
  should have_one(:store).through(:assignment)
  should have_one(:employee).through(:assignment)
  should have_many(:jobs).through(:shift_jobs)


  should validate_presence_of(:date)
  should validate_presence_of(:start_time)
  should validate_presence_of(:assignment_id)
 

  
  context "Creating a context for shifts" do
     setup do
       create_employees
       create_stores
       create_assignments
       create_shifts
       
     end

     teardown do
       
       remove_employees
       remove_stores
       remove_assignments
       remove_shifts
       
     end
    
    should "have a scope for_store" do
      assert_equal 2, Shift.for_store(@cmu).size
      assert_equal 1, Shift.for_store(@oakland).size
    end
    
    # should "have all the shifts listed in chronological order" do
    #   assert_equal [2,3,4], Shift.chronological.map{|i| i.id}
    # end
    
    # should "have a scope past that shows past shifts" do
    #   assert_equal [2,3], Shift.past.map{|i| i.id}
    # end

    # should "have a scope upcoming that shows upcoming shifts" do
    #   assert_equal [4], Shift.upcoming.map{|i| i.id}.sort
    # end
    

    # should "have a scope incompleted that works" do
    #   assert_equal [4], Shift.incompleted.map{|i| i.id}.sort
    # end


    # should "have a scope 'for_employee' that works" do
    #   assert_equal 2, Shift.for_employee(@ben.id).size
    #   assert_equal 1, Shift.for_employee(@kathryn.id).size
    # end
    
    # should "have a scope by_store that works" do
    #   assert_equal [3,4,1], Shift.by_store.map{|i| i.id}
    # end

    # should "have a scope by_employee that works" do
    #   assert_equal [3,4,1], Shift.by_employee.map{|i| i.id}
    # end
    
    

    
    
end
end

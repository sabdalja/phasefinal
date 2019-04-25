require 'test_helper'

class JobTest < ActiveSupport::TestCase
  should have_many(:shift_jobs)
  should validate_presence_of(:name)
  
  
  context "Creating a context for jobs" do
    # create the objects I want with factories
    setup do 
      create_jobs
    end
    
    # and provide a teardown method as well
    teardown do
      remove_jobs
    end

    should "Show that there are two active jobs" do
      assert_equal 2, Job.active.size
    end

    should "Show that there is one inactive job" do
      assert_equal 1, Job.inactive.size
    end

    should "List all the jobs in alphabetical order" do
      assert_equal ["cashier", "cleaner" ,"worker"], Job.alphabetical.map{|i| i.name}.sort
    end

   
  end
end

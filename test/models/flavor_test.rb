require 'test_helper'

class FlavorTest < ActiveSupport::TestCase
  should have_many(:store_flavors)
  should have_many(:stores).through(:store_flavors)
  
  should validate_presence_of(:name)
  
  context "Creating a context for flavors" do
    # create the objects I want with factories
    setup do 
      create_flavors
    end
    
    # and provide a teardown method as well
    teardown do
      remove_flavors
    end

    should "Show that there are two active flavors" do
      assert_equal 2, Flavor.active.size
    end

    should "Show that there is one inactive flavor" do
      assert_equal 1, Flavor.inactive.size
    end

    should "List the flavors in alphabetical order" do
      assert_equal ["chocolate", "strawberry", "vanilla"], Flavor.alphabetical.map{|i| i.name}.sort
    end

  
   
  end
end

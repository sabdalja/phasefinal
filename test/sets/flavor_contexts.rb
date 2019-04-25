module Contexts
  module FlavorContexts
  	def create_flavors
  	  @chocolate = FactoryBot.create(:flavor, name: "chocolate", active: 1)
  	  @vanilla = FactoryBot.create(:flavor, name: "vanilla", active: 1)
  	  @strawberry = FactoryBot.create(:flavor, name: "strawberry", active: 0)


  	end

  	def remove_flavors
  	  @chocolate.destroy
  	  @vanilla.destroy
  	  @strawberry.destroy
  	end

  end
end
module Contexts
  module JobContexts
     def create_jobs
       @cashier = FactoryBot.create(:job, name: "cashier", description: "Stood behind the cash register", active: 1)
       @worker = FactoryBot.create(:job, name: "worker", description: "Worked behind counter", active: 0)
       @cleaner = FactoryBot.create(:job, name: "cleaner", description: "Mopped the shop", active: 1)
     end
    
     def remove_jobs
       @cashier.destroy
       @worker.destroy
       @cleaner.destroy
     end

  
  end
end
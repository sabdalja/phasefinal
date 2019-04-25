module Contexts
  module UserContexts
    # Context for stores 
    def create_users
      @ed_user = FactoryBot.create(:user, email: "ed@gmail.com",password_digest: "ed", employee: @ed)
      @cindy_user = FactoryBot.create(:user, email: "cindy@gmail.com",password_digest: "cindy", employee: @cindy)
      @ben_user = FactoryBot.create(:user, email: "ben@gmail.com",password_digest: "ben", employee: @ben)
      @kathryn_user = FactoryBot.create(:user, email: "kathryn@gmail.com",password_digest: "kathryn", employee: @kathryn)
      @alex_user = FactoryBot.create(:user, email: "alex@gmail.com",password_digest: "alex", employee: @alex)
    end
    
    def remove_users
      @ed_user.destroy
      @cindy_user.destroy
      @ben_user.destroy
      @ralph_user.destroy
      @kathryn_user.destroy
      @alex_user.destroy
    end

  
  end
end
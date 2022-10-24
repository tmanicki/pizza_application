module ControllerMacros
  def login_owner
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      sign_in FactoryBot.create(:admin) # Using factory bot as an example
    end
  end

  def login_chef
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      user = FactoryBot.create(:admin, title:"2", email: "chef@pizza.com")
      user.confirm! 
      sign_in user
    end
  end
end
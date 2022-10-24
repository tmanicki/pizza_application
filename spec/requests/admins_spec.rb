require 'rails_helper'

RSpec.describe "Admins", type: :request do
  describe "GET /index" do
    context "with not being logged in"
      it "returns http success" do
        get "/admins/sign_in"
        expect(response).to have_http_status(:success)
      end

    it "returns http fail" do
      get "/admins/edit"
      expect(response).not_to have_http_status(:success)
    end
  end

  describe "GET /index" do
    context "with being logged in"
      it "returns http success" do
        user = FactoryBot.create(:admin, title:"2", email: "chef@pizza.com")
        sign_in user
        get "/admins/edit"
        expect(response).to have_http_status(:success)
      end

    it "returns http fail" do
      user = FactoryBot.create(:admin, title:"2", email: "chef@pizza.com")
      sign_in user
      get "/admins/sign_in"
      expect(response).not_to have_http_status(:success)
    end
  end
end

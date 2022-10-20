require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/toppings", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Topping. As you add validations to Topping, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {name: 'Tomato'}
  }

  let(:invalid_attributes) {
    {name: 'T0mat0'}
  }

  let(:blank_attributes) {
    {name: ''}
  }

  describe "GET /index" do
    it "renders a successful response" do
      Topping.create! valid_attributes
      get toppings_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      topping = Topping.create! valid_attributes
      get topping_url(topping)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_topping_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      topping = Topping.create! valid_attributes
      get edit_topping_url(topping)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Topping" do
        expect {
          post toppings_url, params: { topping: valid_attributes }
        }.to change(Topping, :count).by(1)
      end

      it "redirects to the created topping" do
        post toppings_url, params: { topping: valid_attributes }
        expect(response).to redirect_to(topping_url(Topping.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Topping" do
        expect {
          post toppings_url, params: { topping: invalid_attributes }
        }.to change(Topping, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post toppings_url, params: { topping: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end

    context "with blank parameters" do
      it "does not create a new Topping" do
        expect {
          post toppings_url, params: { topping: blank_attributes }
        }.to change(Topping, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post toppings_url, params: { topping: blank_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        {name: 'Cheese'}
      }

      it "updates the requested topping" do
        topping = Topping.create! valid_attributes
        patch topping_url(topping), params: { topping: new_attributes }
        topping.reload
      end

      it "redirects to the topping" do
        topping = Topping.create! valid_attributes
        patch topping_url(topping), params: { topping: new_attributes }
        topping.reload
        expect(response).to redirect_to(topping_url(topping))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        topping = Topping.create! valid_attributes
        patch topping_url(topping), params: { topping: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end

    context "with blank parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        topping = Topping.create! valid_attributes
        patch topping_url(topping), params: { topping: blank_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested topping" do
      topping = Topping.create! valid_attributes
      expect {
        delete topping_url(topping)
      }.to change(Topping, :count).by(-1)
    end

    it "redirects to the toppings list" do
      topping = Topping.create! valid_attributes
      delete topping_url(topping)
      expect(response).to redirect_to(toppings_url)
    end
  end
end

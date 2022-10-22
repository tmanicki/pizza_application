require 'rails_helper'

RSpec.describe "pizzas/edit", type: :view do
  let(:pizza) {
    Pizza.create!(
      pName: "MyString"
    )
  }

  before(:each) do
    assign(:pizza, pizza)
  end

  it "renders the edit pizza form" do
    render

    assert_select "form[action=?][method=?]", pizza_path(pizza), "post" do

      assert_select "input[name=?]", "pizza[pName]"
    end
  end
end

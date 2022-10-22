require 'rails_helper'

RSpec.describe "pizzas/new", type: :view do
  before(:each) do
    assign(:pizza, Pizza.new(
      pName: "MyString"
    ))
  end

  it "renders new pizza form" do
    render

    assert_select "form[action=?][method=?]", pizzas_path, "post" do

      assert_select "input[name=?]", "pizza[pName]"
    end
  end
end

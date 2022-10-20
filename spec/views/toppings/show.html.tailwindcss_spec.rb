require 'rails_helper'

RSpec.describe "toppings/show", type: :view do
  before(:each) do
    assign(:topping, Topping.create!(
      name: "Name",
      type: "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Type/)
  end
end

require 'rails_helper'

RSpec.describe "pizzas/show", type: :view do
  before(:each) do
    assign(:pizza, Pizza.create!(
      pName: "P Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/P Name/)
  end
end

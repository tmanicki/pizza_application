require 'rails_helper'

RSpec.describe "toppings/index", type: :view do
  before(:each) do
    assign(:toppings, [
      Topping.create!(
        name: "Name"
      ),
      Topping.create!(
        tNname: "Name"
      )
    ])
  end

  it "renders a list of toppings" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end

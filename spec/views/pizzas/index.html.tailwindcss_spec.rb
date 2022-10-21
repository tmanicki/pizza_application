require 'rails_helper'

RSpec.describe "pizzas/index", type: :view do
  before(:each) do
    assign(:pizzas, [
      Pizza.create!(
        pName: "P Name"
      ),
      Pizza.create!(
        pName: "P Name"
      )
    ])
  end

  it "renders a list of pizzas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("P Name".to_s), count: 2
  end
end

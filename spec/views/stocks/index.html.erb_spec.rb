require 'rails_helper'

RSpec.describe "stocks/index", type: :view do
  before(:each) do
    assign(:stocks, [
      Stock.create!(
        :stock_operation => nil
      ),
      Stock.create!(
        :stock_operation => nil
      )
    ])
  end

  it "renders a list of stocks" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

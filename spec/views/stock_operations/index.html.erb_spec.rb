require 'rails_helper'

RSpec.describe "stock_operations/index", type: :view do
  before(:each) do
    assign(:stock_operations, [
      StockOperation.create!(
        :type => 1,
        :name => "Name"
      ),
      StockOperation.create!(
        :type => 1,
        :name => "Name"
      )
    ])
  end

  it "renders a list of stock_operations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

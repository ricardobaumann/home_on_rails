require 'rails_helper'

RSpec.describe "stock_items/index", type: :view do
  before(:each) do
    assign(:stock_items, [
      StockItem.create!(
        :stock => nil,
        :product => nil,
        :unit_prize => "9.99",
        :amount => "9.99",
        :item_prize => "9.99"
      ),
      StockItem.create!(
        :stock => nil,
        :product => nil,
        :unit_prize => "9.99",
        :amount => "9.99",
        :item_prize => "9.99"
      )
    ])
  end

  it "renders a list of stock_items" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

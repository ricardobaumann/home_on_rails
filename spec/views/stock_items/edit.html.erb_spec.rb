require 'rails_helper'

RSpec.describe "stock_items/edit", type: :view do
  before(:each) do
    @stock_item = assign(:stock_item, StockItem.create!(
      :stock => nil,
      :product => nil,
      :unit_prize => "9.99",
      :amount => "9.99",
      :item_prize => "9.99"
    ))
  end

  it "renders the edit stock_item form" do
    render

    assert_select "form[action=?][method=?]", stock_item_path(@stock_item), "post" do

      assert_select "input#stock_item_stock_id[name=?]", "stock_item[stock_id]"

      assert_select "input#stock_item_product_id[name=?]", "stock_item[product_id]"

      assert_select "input#stock_item_unit_prize[name=?]", "stock_item[unit_prize]"

      assert_select "input#stock_item_amount[name=?]", "stock_item[amount]"

      assert_select "input#stock_item_item_prize[name=?]", "stock_item[item_prize]"
    end
  end
end

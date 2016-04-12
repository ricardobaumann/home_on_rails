require 'rails_helper'

RSpec.describe "stock_items/show", type: :view do
  before(:each) do
    @stock_item = assign(:stock_item, StockItem.create!(
      :stock => nil,
      :product => nil,
      :unit_prize => "9.99",
      :amount => "9.99",
      :item_prize => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end

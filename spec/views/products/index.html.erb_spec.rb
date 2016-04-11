require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :name => "product",
        :product_group => nil,
        :metric_unit => nil,
        :unit_prize => "9.99"
      ),
      Product.create!(
        :name => "product",
        :product_group => nil,
        :metric_unit => nil,
        :unit_prize => "9.99"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "product".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

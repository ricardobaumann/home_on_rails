require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "MyString",
      :product_group => nil,
      :metric_unit => nil,
      :unit_prize => "9.99"
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_product_group_id[name=?]", "product[product_group_id]"

      assert_select "input#product_metric_unit_id[name=?]", "product[metric_unit_id]"

      assert_select "input#product_unit_prize[name=?]", "product[unit_prize]"
    end
  end
end

require 'rails_helper'

RSpec.describe "product_groups/edit", type: :view do
  before(:each) do
    @product_group = assign(:product_group, ProductGroup.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit product_group form" do
    render

    assert_select "form[action=?][method=?]", product_group_path(@product_group), "post" do

      assert_select "input#product_group_name[name=?]", "product_group[name]"
    end
  end
end

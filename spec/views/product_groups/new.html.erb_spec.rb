require 'rails_helper'

RSpec.describe "product_groups/new", type: :view do
  before(:each) do
    assign(:product_group, ProductGroup.new(
      :name => "MyString"
    ))
  end

  it "renders new product_group form" do
    render

    assert_select "form[action=?][method=?]", product_groups_path, "post" do

      assert_select "input#product_group_name[name=?]", "product_group[name]"
    end
  end
end

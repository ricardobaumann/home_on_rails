require 'rails_helper'

RSpec.describe "product_groups/index", type: :view do
  before(:each) do
    assign(:product_groups, [
      ProductGroup.create!(
        :name => "Name"
      ),
      ProductGroup.create!(
        :name => "Another name"
      )
    ])
  end

  it "renders a list of product_groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
  end
end

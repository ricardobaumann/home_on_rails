require 'rails_helper'

RSpec.describe "product_groups/show", type: :view do
  before(:each) do
    @product_group = assign(:product_group, ProductGroup.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

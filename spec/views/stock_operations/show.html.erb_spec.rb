require 'rails_helper'

RSpec.describe "stock_operations/show", type: :view do
  before(:each) do
    @stock_operation = assign(:stock_operation, StockOperation.create!(
      :type => 1,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
  end
end

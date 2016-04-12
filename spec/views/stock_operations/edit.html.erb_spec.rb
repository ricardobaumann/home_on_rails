require 'rails_helper'

RSpec.describe "stock_operations/edit", type: :view do
  before(:each) do
    @stock_operation = assign(:stock_operation, StockOperation.create!(
      :type => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit stock_operation form" do
    render

    assert_select "form[action=?][method=?]", stock_operation_path(@stock_operation), "post" do

      assert_select "input#stock_operation_type[name=?]", "stock_operation[type]"

      assert_select "input#stock_operation_name[name=?]", "stock_operation[name]"
    end
  end
end

require 'rails_helper'

RSpec.describe "stock_operations/new", type: :view do
  before(:each) do
    assign(:stock_operation, StockOperation.new(
      :type => 1,
      :name => "MyString"
    ))
  end

  it "renders new stock_operation form" do
    render

    assert_select "form[action=?][method=?]", stock_operations_path, "post" do

      assert_select "input#stock_operation_type[name=?]", "stock_operation[type]"

      assert_select "input#stock_operation_name[name=?]", "stock_operation[name]"
    end
  end
end

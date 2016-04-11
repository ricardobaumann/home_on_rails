require 'rails_helper'

RSpec.describe "metric_units/new", type: :view do
  before(:each) do
    assign(:metric_unit, MetricUnit.new(
      :name => "MyString"
    ))
  end

  it "renders new metric_unit form" do
    render

    assert_select "form[action=?][method=?]", metric_units_path, "post" do

      assert_select "input#metric_unit_name[name=?]", "metric_unit[name]"
    end
  end
end

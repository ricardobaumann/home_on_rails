require 'rails_helper'

RSpec.describe "metric_units/edit", type: :view do
  before(:each) do
    @metric_unit = assign(:metric_unit, MetricUnit.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit metric_unit form" do
    render

    assert_select "form[action=?][method=?]", metric_unit_path(@metric_unit), "post" do

      assert_select "input#metric_unit_name[name=?]", "metric_unit[name]"
    end
  end
end

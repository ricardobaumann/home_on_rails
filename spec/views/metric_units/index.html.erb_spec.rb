require 'rails_helper'

RSpec.describe "metric_units/index", type: :view do
  before(:each) do
    assign(:metric_units, [
      MetricUnit.create!(
        :name => "unit"
      ),
      MetricUnit.create!(
        :name => "unit"
      )
    ])
  end

  it "renders a list of metric_units" do
    render
    assert_select "tr>td", :text => "unit".to_s, :count => 2
  end
end

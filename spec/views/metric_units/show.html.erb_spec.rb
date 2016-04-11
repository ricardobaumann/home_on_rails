require 'rails_helper'

RSpec.describe "metric_units/show", type: :view do
  before(:each) do
    @metric_unit = assign(:metric_unit, MetricUnit.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

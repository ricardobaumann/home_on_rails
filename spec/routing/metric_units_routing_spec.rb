require "rails_helper"

RSpec.describe MetricUnitsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/metric_units").to route_to("metric_units#index")
    end

    it "routes to #new" do
      expect(:get => "/metric_units/new").to route_to("metric_units#new")
    end

    it "routes to #show" do
      expect(:get => "/metric_units/1").to route_to("metric_units#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/metric_units/1/edit").to route_to("metric_units#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/metric_units").to route_to("metric_units#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/metric_units/1").to route_to("metric_units#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/metric_units/1").to route_to("metric_units#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/metric_units/1").to route_to("metric_units#destroy", :id => "1")
    end

  end
end

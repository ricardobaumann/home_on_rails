require "rails_helper"

RSpec.describe StockOperationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/stock_operations").to route_to("stock_operations#index")
    end

    it "routes to #new" do
      expect(:get => "/stock_operations/new").to route_to("stock_operations#new")
    end

    it "routes to #show" do
      expect(:get => "/stock_operations/1").to route_to("stock_operations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/stock_operations/1/edit").to route_to("stock_operations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/stock_operations").to route_to("stock_operations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/stock_operations/1").to route_to("stock_operations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/stock_operations/1").to route_to("stock_operations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/stock_operations/1").to route_to("stock_operations#destroy", :id => "1")
    end

  end
end

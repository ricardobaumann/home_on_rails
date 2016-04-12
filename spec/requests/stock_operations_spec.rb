require 'rails_helper'

RSpec.describe "StockOperations", type: :request do
  describe "GET /stock_operations" do
    it "works! (now write some real specs)" do
      get stock_operations_path
      expect(response).to have_http_status(200)
    end
  end
end

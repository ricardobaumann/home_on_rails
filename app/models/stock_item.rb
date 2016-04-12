class StockItem < ActiveRecord::Base
  belongs_to :stock
  belongs_to :product
end

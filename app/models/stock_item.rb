class StockItem < ActiveRecord::Base
  belongs_to :stock
  belongs_to :product
  #validates_presence_of :stock, :product, :unit_prize, :item_prize
end

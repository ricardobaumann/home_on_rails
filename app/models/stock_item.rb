class StockItem < ActiveRecord::Base
  belongs_to :stock
  belongs_to :product
  validates_presence_of :stock, :product, :unit_prize, :item_prize

  before_validation :set_unit_prize

  after_initialize :init
  
  def init
  	self.amount||=1
  end

  def set_unit_prize
  	self.unit_prize = (self.item_prize / self.amount)
  end
end

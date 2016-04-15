class Stock < ActiveRecord::Base
  belongs_to :stock_operation
  has_many :stock_items
  belongs_to :place

  def to_s
  	"#{entry_date} - #{stock_operation}"
  end

  def total_price
  	self.stock_items.sum(:item_prize)
  end
end

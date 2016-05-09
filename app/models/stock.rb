class Stock < ActiveRecord::Base
  belongs_to :stock_operation
  has_many :stock_items, :dependent => :destroy
  belongs_to :place
  belongs_to :stock

  validates_presence_of :stock_operation, :place, :entry_date, :refund

  before_create :check_template_fields

  after_create :check_template_items

  after_initialize :init

  def init
    self.refund||=0
  end

  def to_s
  	"#{entry_date} - #{stock_operation}"
  end

  def total_price
  	items_price - refund
  end

  def items_price
    self.stock_items.sum(:item_prize)
  end

  def check_template_fields
  	if self.stock
  		self.stock_operation = self.stock.stock_operation
  		self.place = self.stock.place
  	end
  end

  def check_template_items
  	if self.stock
  		stock.stock_items.each do |stock_item|
  			new_item = stock_item.dup
  			new_item.stock = self
  			new_item.save!
  		end
  	end
  end
end

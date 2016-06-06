class StockItem < ActiveRecord::Base
  belongs_to :stock
  belongs_to :product
  validates_presence_of :stock, :product, :unit_prize, :item_prize

  before_validation :set_unit_prize, :set_product

  after_initialize :init
  
  def init
  	self.amount||=1
  end

  def set_unit_prize
  	self.unit_prize = (self.item_prize / self.amount)
  end

  def set_product
    group = ProductGroup.find_or_create_by(name: "default")
    metric = MetricUnit.find_or_create_by(name: "default")
    self.product = Product.find_or_create_by!(name: self.product_name, product_group: group, metric_unit: metric) if self.product_name
  end
end

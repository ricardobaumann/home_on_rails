class Product < ActiveRecord::Base
  belongs_to :product_group
  belongs_to :metric_unit

  validates_presence_of :name, :product_group, :metric_unit

  validates_uniqueness_of :name, scope: :product_group
end

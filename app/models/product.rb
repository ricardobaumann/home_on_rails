class Product < ActiveRecord::Base
  belongs_to :product_group
  belongs_to :metric_unit
end

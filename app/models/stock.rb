class Stock < ActiveRecord::Base
  belongs_to :stock_operation

  def to_s
  	"#{stock_date} - #{stock_operation}"
  end
end

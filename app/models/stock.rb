class Stock < ActiveRecord::Base
  belongs_to :stock_operation

  def to_s
  	"#{entry_date} - #{stock_operation}"
  end
end

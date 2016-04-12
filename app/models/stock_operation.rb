class StockOperation < ActiveRecord::Base

	validates_presence_of :stock_type, :name
	validates_uniqueness_of :name, scope: :stock_type

	def to_s
		name
	end

end

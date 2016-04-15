class ProductGroup < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	
	has_many :products, :dependent => :restrict_with_exception

	def to_s
		name
	end
end

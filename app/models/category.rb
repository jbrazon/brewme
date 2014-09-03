class Category < ActiveRecord::Base
	belongs_to :category
	has_many :categories
	has_many :items
	def self.roots
		Category.where(category_id: nil)
	end

end

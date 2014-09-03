class BrowseController < ApplicationController
	def index
		@categories = Category.roots
	end	
	def category
		@category = Category.find params[:id]
	end	
	def item
		@item = Item.find params[:id]
	end	

end	
 
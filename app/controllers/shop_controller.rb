class ShopController < ApplicationController
	def add_item
		cart_item = CartItem.new
		cart_item.item = Item.find params[:id]
		cart_item.cart = current_user.cart
		cart_item.save
		redirect_to action: "view"
	end	

	def view
		@cart = current_user.cart
	end		
end	
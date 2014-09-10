class CartItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :item
  def total
  	item.price * quantity
  end		
  def price
  	item.price
  end	
end



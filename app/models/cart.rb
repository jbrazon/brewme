class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :fees
  has_many :cart_items
end

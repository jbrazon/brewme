class ChangeQuantityOnItem < ActiveRecord::Migration
  def change
  	change_column :items, :quantity, :string
  end
end

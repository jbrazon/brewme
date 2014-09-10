class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.references :cart, index: true
      t.references :item, index: true
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end

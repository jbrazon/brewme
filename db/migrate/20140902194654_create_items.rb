class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.references :category, index: true

      t.timestamps
    end
  end
end

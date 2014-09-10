class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.references :cart, index: true
      t.string :title
      t.datetime :start_at
      t.datetime :end
      t.float :fee

      t.timestamps
    end
  end
end

class CreateStockOperations < ActiveRecord::Migration
  def change
    create_table :stock_operations do |t|
      t.integer :stock_type
      t.string :name

      t.timestamps null: false
    end
  end
end

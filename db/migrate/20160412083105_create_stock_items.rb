class CreateStockItems < ActiveRecord::Migration
  def change
    create_table :stock_items do |t|
      t.belongs_to :stock, index: true, foreign_key: true
      t.belongs_to :product, index: true, foreign_key: true
      t.decimal :unit_prize
      t.decimal :amount
      t.decimal :item_prize

      t.timestamps null: false
    end
  end
end

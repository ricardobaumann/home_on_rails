class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.datetime :entry_date
      t.belongs_to :stock_operation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

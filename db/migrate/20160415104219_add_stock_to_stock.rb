class AddStockToStock < ActiveRecord::Migration
  def change
    add_reference :stocks, :stock, index: true, foreign_key: true
  end
end

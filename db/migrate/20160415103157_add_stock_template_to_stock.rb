class AddStockTemplateToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :is_stock_template, :boolean
  end
end

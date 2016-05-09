class AddRefundToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :refund, :decimal
  end
end

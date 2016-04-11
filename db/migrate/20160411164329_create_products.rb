class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.belongs_to :product_group, index: true, foreign_key: true
      t.belongs_to :metric_unit, index: true, foreign_key: true
      t.decimal :unit_prize

      t.timestamps null: false
    end
  end
end

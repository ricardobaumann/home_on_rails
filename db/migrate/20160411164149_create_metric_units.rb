class CreateMetricUnits < ActiveRecord::Migration
  def change
    create_table :metric_units do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

class AddPlaceToStock < ActiveRecord::Migration
  def change
    add_reference :stocks, :place, index: true, foreign_key: true
  end
end

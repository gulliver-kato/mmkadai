class AddHouseRefToRoute < ActiveRecord::Migration[5.2]
  def change
    add_reference :routes, :house, foreign_key: true
  end
end

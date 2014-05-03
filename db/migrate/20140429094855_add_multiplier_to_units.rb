class AddMultiplierToUnits < ActiveRecord::Migration
  def change
    add_column :units, :multipler, :integer
  end
end

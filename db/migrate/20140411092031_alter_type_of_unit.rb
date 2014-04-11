class AlterTypeOfUnit < ActiveRecord::Migration
  def self.up
	rename_column :units, :type, :unit_type
  end
end
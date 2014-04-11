class AddActiveToAccountType < ActiveRecord::Migration
  def change
    add_column :account_types, :active, :boolean
  end
end

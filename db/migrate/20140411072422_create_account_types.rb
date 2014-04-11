class CreateAccountTypes < ActiveRecord::Migration
  def change
    create_table :account_types do |t|
      t.string :name
      t.string :desc
      t.integer :factor

      t.timestamps
    end
  end
end

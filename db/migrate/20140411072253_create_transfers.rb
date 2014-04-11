class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.integer :from_account
      t.integer :to_account
      t.decimal :amount
      t.date :date
      t.text :note

      t.timestamps
    end
  end
end

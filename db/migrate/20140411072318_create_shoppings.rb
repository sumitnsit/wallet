class CreateShoppings < ActiveRecord::Migration
  def change
    create_table :shoppings do |t|
      t.integer :account_id
      t.date :date
      t.decimal :amount
      t.integer :bill_number

      t.timestamps
    end
  end
end

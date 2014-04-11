class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :account_type_id
      t.decimal :init_amount
      t.text :note
      t.boolean :active
      t.integer :currency_id

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :quantity
      t.decimal :rate
      t.decimal :amount
      t.integer :unit_id
      t.integer :category_id
      t.integer :payee_id
      t.integer :shopping_id

      t.timestamps
    end
  end
end

class CreatePayees < ActiveRecord::Migration
  def change
    create_table :payees do |t|
      t.string :name
      t.string :url
      t.integer :contact
      t.text :note

      t.timestamps
    end
  end
end

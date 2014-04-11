class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :symbol
      t.boolean :active
      t.string :type
      t.text :note

      t.timestamps
    end
  end
end

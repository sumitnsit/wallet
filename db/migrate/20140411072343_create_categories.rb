class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :parent_id
      t.string :name
      t.boolean :active
      t.text :note

      t.timestamps
    end
  end
end

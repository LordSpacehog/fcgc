class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, limit: 50
      t.integer :position

      t.timestamps
    end
    add_index :categories, :position, unique: true
  end
end

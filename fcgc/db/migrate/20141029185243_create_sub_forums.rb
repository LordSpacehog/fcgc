class CreateSubForums < ActiveRecord::Migration
  def change
    create_table :sub_forums do |t|
      t.string :name
      t.text :description
      t.references :category, index: true

      t.timestamps
    end
  end
end

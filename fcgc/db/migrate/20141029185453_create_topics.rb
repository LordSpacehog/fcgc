class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.references :subforum, index: true
      t.datetime :lastpost

      t.timestamps
    end
  end
end

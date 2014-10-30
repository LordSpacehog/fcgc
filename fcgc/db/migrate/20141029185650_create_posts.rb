class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :body
      t.datetime :mtime
      t.timestamp :posted
      t.references :topic, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end

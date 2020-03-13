class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :content_id

      t.timestamps

    end
    add_index :likes, :user_id
    add_index :likes, :content_id
    add_index :likes, [:user_id, :content_id], unique: true
  end
end

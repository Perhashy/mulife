class AddNicknameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string, null: false
    add_column :users, :part_id, :integer, null: false
    add_column :users, :message, :string
    add_column :users, :image, :string
  end
end

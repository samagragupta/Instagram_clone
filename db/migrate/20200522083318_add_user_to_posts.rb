class AddUserToPosts < ActiveRecord::Migration[6.0]
  def change
    add_index :posts, :user_id
    change_column :posts, :user_id, :integer, references: :users
  end
end

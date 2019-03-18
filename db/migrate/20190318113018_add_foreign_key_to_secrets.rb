class AddForeignKeyToSecrets < ActiveRecord::Migration[5.1]
  def change
    add_column :secrets, :user_id, :integer
  end
end

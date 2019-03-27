class AddColumnToSecrets < ActiveRecord::Migration[5.1]
  def change
    add_column :secrets, :author, :string
  end
end

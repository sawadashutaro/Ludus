class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :icon_id, :text
    add_column :users, :is_deleted, :boolean, default:"false"
  end
end

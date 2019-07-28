class AddIsGoogleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_google, :boolean, default: false
  end
end

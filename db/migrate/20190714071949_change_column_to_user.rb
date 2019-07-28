class ChangeColumnToUser < ActiveRecord::Migration[5.2]
  def up
  	change_column :users, :name, :string, default:"名無し"
  end

  def down
  	change_column :users, :name, :string
  end
end

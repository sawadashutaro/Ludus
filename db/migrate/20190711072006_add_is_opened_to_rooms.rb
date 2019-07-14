class AddIsOpenedToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :is_opened, :boolean, default:"false"
  end
end

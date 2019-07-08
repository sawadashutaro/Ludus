class AddImageIdToTournament < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :image_id, :text
  end
end

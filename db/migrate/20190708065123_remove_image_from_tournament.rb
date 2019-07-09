class RemoveImageFromTournament < ActiveRecord::Migration[5.2]
  def change
    remove_column :tournaments, :image, :string
  end
end

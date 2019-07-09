class RemoveGameFromTournament < ActiveRecord::Migration[5.2]
  def change
    remove_column :tournaments, :game, :string
  end
end

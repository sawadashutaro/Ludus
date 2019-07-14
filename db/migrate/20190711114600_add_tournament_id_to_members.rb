class AddTournamentIdToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :tournament_id, :integer
  end
end

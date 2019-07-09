class AddTitleIdToTournament < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :title_id, :integer
  end
end

class AddMaximumToTournaments < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :maximum, :integer
  end
end

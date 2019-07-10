class RenameDmToMessage < ActiveRecord::Migration[5.2]
  def change
  	rename_table :dms,  :messages
  end
end

class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :user_id, null:false
      t.integer :tournament_id, null:false

      t.timestamps
    end
  end
end

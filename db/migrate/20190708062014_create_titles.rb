class CreateTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :titles, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :game, null:false

      t.timestamps
    end
  end
end

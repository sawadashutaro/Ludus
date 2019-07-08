class CreateTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :image
      t.string :game
      t.datetime :date
      t.string :address
      t.text :detail
      t.integer :user_id
      t.boolean :is_deleted, default:"false"
      t.boolean :is_completed, default:"true"

      t.timestamps
    end
  end
end

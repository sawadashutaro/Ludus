class CreateDms < ActiveRecord::Migration[5.2]
  def change
    create_table :dms, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.text :chat, null:false
      t.integer :user_id, null:false

      t.timestamps
    end
  end
end

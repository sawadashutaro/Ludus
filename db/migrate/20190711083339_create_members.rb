class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :room_id
      t.integer :user_id

      t.timestamps
    end
  end
end

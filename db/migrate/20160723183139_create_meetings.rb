class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.integer :blob_id
      t.integer :user_id
      t.string :room
      t.datetime :time

      t.timestamps
    end
  end
end

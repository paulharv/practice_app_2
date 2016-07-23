class CreateBlobs < ActiveRecord::Migration[5.0]
  def change
    create_table :blobs do |t|
      t.string :name

      t.timestamps
    end
  end
end

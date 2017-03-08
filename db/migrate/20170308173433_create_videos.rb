class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :uid

      t.timestamps
    end
    add_index :videos, :uid
  end
end

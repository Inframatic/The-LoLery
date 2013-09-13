class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :video
      t.text :video_description

      t.timestamps
    end
    add_index :videos, [:user_id, :created_at]
  end
end

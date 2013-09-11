class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :video
      t.text :video_description

      t.timestamps
    end
  end
end

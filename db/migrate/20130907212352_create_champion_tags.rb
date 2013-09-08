class CreateChampionTags < ActiveRecord::Migration
  def change
    create_table :champion_tags do |t|
      t.references :champion, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end

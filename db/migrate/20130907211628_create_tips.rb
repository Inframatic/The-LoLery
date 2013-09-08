class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.text :content
      t.references :champion, index: true

      t.timestamps
    end
  end
end

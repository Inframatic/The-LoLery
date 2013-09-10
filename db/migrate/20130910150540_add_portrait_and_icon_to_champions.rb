class AddPortraitAndIconToChampions < ActiveRecord::Migration
  def change
    add_column :champions, :icon_path, :string
    add_column :champions, :portrait_path, :string
  end
end

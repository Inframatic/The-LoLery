class CreateChampions < ActiveRecord::Migration
  def change
    create_table :champions do |t|
      t.integer :lol_id
      t.string :name
      t.string :display_name
      t.string :title
      t.text :description
      t.text :quote
      t.string :quote_author
      t.float :range
      t.float :move_speed
      t.float :armor_base
      t.float :armor_level
      t.float :mana_base
      t.float :mana_level
      t.float :critical_chance_base
      t.float :critical_chance_level
      t.float :mana_regen_base
      t.float :mana_regen_level
      t.float :health_regen_base
      t.float :health_regen_level
      t.float :magic_resist_base
      t.float :magic_resist_level
      t.float :health_base
      t.float :health_level
      t.float :attack_base
      t.float :attack_level
      t.float :rating_defense
      t.float :rating_magic
      t.float :rating_difficulty
      t.float :rating_attack

      t.timestamps
    end
  end
end

class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.integer :rank
      t.string :name
      t.string :cost
      t.string :cooldown
      t.integer :range
      t.text :effect
      t.text :description

      t.timestamps
    end
  end
end

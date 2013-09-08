class AddChampionReferencesToAbilities < ActiveRecord::Migration
  def change
    add_reference :abilities, :champion, index: true
  end
end

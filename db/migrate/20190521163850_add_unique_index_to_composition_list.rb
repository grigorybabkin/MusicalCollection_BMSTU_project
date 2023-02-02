class AddUniqueIndexToCompositionList < ActiveRecord::Migration[5.2]
  def change
      add_index :composition_lists, [:composition_id, :album_id, :person_id, :artist_id, :position_number], unique: true, name: 'index_composition_lists_all_fields_unique'
      add_index :composition_lists, [:composition_id, :album_id, :person_id, :artist_id], unique: true, name: 'index_composition_lists_four_fields_unique'
  end
end

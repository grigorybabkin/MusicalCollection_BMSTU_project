class AddUniqueIndexToArtistList < ActiveRecord::Migration[5.2]
  def change
      add_index :artist_lists, [:artist_id, :pesron_id, :debut_year, :end_year], unique: true, name: 'index_artist_lists_all_fields_unique'
  end
end

class AddUniqueIndexToAlbum < ActiveRecord::Migration[5.2]
  def change
      add_index :albums, [:album_type_id, :label_id, :name, :release_date], unique: true, name: 'index_albums_all_fields_unique'
  end
end

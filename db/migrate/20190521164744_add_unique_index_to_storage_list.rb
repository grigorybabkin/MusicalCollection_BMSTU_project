class AddUniqueIndexToStorageList < ActiveRecord::Migration[5.2]
  def change
      add_index :storage_lists, [:album_id, :music_storage_id], unique: true
  end
end

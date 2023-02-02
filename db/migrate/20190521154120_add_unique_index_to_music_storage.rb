class AddUniqueIndexToMusicStorage < ActiveRecord::Migration[5.2]
  def change
      add_index :music_storages, [:rack, :shelf, :section, :cell], unique: true
  end
end

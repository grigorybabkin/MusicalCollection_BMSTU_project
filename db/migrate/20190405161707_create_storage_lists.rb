class CreateStorageLists < ActiveRecord::Migration[5.2]
  def change
    create_table :storage_lists do |t|
        t.belongs_to :album, index: true
        t.belongs_to :music_storage, index: true
        t.date :production_year, null: false

        t.timestamps
    end
  end
end

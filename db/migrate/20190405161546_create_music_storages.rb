class CreateMusicStorages < ActiveRecord::Migration[5.2]
  def change
    create_table :music_storages do |t|
        t.belongs_to :company, index: true
        t.belongs_to :storage_type, index: true
        t.string :name, null: false
        t.integer :rack, limit: 3, null: false
        t.integer :shelf, limit: 3, null: false
        t.integer :section, limit: 3, null: false
        t.integer :cell, limit: 3, null: false

        t.timestamps
    end
  end
end

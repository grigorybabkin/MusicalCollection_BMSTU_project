class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
        t.belongs_to :album_type, index: true
        t.belongs_to :label, index: true
        t.string :name, null: false
        t.date :release_date, null: false

        t.timestamps
    end
  end
end

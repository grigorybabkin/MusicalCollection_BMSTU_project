class CreateAlbumTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :album_types do |t|
        t.string :name, limit: 50, null: false

        t.timestamps
    end
  end
end

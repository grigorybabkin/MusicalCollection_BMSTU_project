class CreateArtistLists < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_lists do |t|
        t.belongs_to :artist, index: true
        t.belongs_to :person, index: true
        t.date :debut_year, null: false
        t.date :end_year
        
        t.timestamps
    end
  end
end

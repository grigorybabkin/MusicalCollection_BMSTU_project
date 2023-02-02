class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
        t.boolean :type_band, default: false
        t.string :name, limit: 50, null: false 
        t.text :bio

        t.timestamps
    end
  end
end

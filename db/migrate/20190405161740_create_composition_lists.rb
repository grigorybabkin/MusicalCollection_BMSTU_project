class CreateCompositionLists < ActiveRecord::Migration[5.2]
  def change
    create_table :composition_lists do |t|
        t.belongs_to :composition, index: true
        t.belongs_to :album, index: true
        t.belongs_to :person, index: true
        t.belongs_to :artist, index: true
        t.integer :position_number, null: false

        t.timestamps
    end
  end
end

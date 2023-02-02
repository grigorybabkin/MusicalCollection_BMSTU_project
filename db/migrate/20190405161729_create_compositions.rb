class CreateCompositions < ActiveRecord::Migration[5.2]
  def change
    create_table :compositions do |t|
        t.belongs_to :genre, index: true
        t.string :name, null: false
        t.time :duration, null: false
        t.date :release_date, null: false
        t.text :lyrics

        t.timestamps
    end
  end
end

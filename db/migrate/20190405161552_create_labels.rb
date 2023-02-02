class CreateLabels < ActiveRecord::Migration[5.2]
  def change
    create_table :labels do |t|
        t.belongs_to :country, index: true
        t.string :name, limit: 50, null: false
        t.date :foundation_date, null: false
        t.date :end_existing_date

        t.timestamps
    end
  end
end

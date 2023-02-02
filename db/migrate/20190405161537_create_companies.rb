class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
        t.belongs_to :country, index: true
        t.string :name, limit: 50, null: false
        t.date :foundation_date, null: false
        t.date :releaes_end_year

        t.timestamps
    end
  end
end

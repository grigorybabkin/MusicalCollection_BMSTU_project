class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
        t.belongs_to :country, index: true
        t.string :first_name, limit: 25, null: false
        t.string :last_name, limit: 25, null: false
        t.date :birth_date, null: false
        t.date :death_date
        
        t.timestamps
    end
  end
end

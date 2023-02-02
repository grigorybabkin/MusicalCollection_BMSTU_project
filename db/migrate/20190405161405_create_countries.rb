class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
        t.string :name, limit: 25, null: false

        t.timestamps
    end
  end
end

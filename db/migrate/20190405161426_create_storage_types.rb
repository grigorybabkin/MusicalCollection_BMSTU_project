class CreateStorageTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :storage_types do |t|
        t.string :name, limit: 15, null: false

        t.timestamps
    end
  end
end

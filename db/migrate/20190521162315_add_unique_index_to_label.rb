class AddUniqueIndexToLabel < ActiveRecord::Migration[5.2]
  def change
      add_index :labels, [:country_id, :name, :foundation_date, :end_existing_date], unique: true, name: 'index_labels_all_fields_unique'
  end
end

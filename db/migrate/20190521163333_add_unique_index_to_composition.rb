class AddUniqueIndexToComposition < ActiveRecord::Migration[5.2]
  def change
      add_index :compositions, [:genre_id, :name, :duration, :release_date, :lyrics], unique: true, name: 'index_compositions_all_fields_unique'
  end
end

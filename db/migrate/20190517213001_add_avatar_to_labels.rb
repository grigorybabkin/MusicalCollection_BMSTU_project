class AddAvatarToLabels < ActiveRecord::Migration[5.2]
  def change
    add_column :labels, :avatar, :string
  end
end

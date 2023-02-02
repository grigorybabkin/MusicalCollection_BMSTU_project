class AddAvatarToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :avatar, :string
  end
end

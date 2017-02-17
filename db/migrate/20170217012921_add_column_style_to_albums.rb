class AddColumnStyleToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :style, :string
  end
end

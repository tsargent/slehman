class AddSidemanToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :is_sideman, :boolean
  end
end

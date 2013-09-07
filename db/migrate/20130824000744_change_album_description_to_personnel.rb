class ChangeAlbumDescriptionToPersonnel < ActiveRecord::Migration
  def up
    rename_column :albums, :description, :personnel
  end

  def down
    rename_column :albums, :personnel, :description
  end
end

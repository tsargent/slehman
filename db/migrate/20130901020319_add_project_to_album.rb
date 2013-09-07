class AddProjectToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :project, :string
  end
end

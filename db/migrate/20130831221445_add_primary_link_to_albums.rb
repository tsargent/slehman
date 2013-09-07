class AddPrimaryLinkToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :cta_url, :string
    add_column :albums, :cta_text, :string
  end
end

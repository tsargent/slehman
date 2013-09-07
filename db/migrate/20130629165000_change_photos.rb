class ChangePhotos < ActiveRecord::Migration
  def up
    remove_column :photos, :photoable_id
    remove_column :photos, :photoable_type
  end

  def down
    add_column :photos, :photoable_id, :integer
    add_column :photos, :photoable_type, :string
  end
end

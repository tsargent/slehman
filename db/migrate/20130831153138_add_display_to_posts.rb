class AddDisplayToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :display, :boolean
  end
end

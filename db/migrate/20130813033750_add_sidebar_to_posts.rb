class AddSidebarToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sidebar, :boolean
    
  end
end

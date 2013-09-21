class AddServiceToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :service, :string
  end
end

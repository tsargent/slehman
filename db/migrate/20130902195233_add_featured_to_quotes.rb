class AddFeaturedToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :featured, :boolean
  end
end

class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :position
      t.date :date

      t.timestamps
    end
  end
end

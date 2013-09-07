class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :embed
      t.integer :position
      t.boolean :display
      t.text :description

      t.timestamps
    end
  end
end

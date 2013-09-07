class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.integer :position
      t.boolean :display

      t.timestamps
    end
  end
end

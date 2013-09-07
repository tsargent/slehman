class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :source
      t.text :body
      t.string :url
      t.integer :position
      t.boolean :display

      t.timestamps
    end
  end
end

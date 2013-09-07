class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :source
      t.text :body
      t.boolean :display
      t.integer :position
      t.string :url

      t.timestamps
    end
  end
end

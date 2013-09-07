class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :body
      t.datetime :datetime
      t.text :address

      t.timestamps
    end
  end
end

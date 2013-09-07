class AddPhotoableToPhotos < ActiveRecord::Migration

  def self.up
    change_table :photos do |t|
      t.references :photoable, :polymorphic => true
    end
  end
  
  def self.down
    change_table :photos do |t|
      t.remove_references :photoable, :polymorphic => true
    end
  end
  
end

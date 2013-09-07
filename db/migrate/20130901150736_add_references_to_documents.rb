class AddReferencesToDocuments < ActiveRecord::Migration

  def self.up
    change_table :documents do |t|
      t.references :documentable, :polymorphic => true
    end
  end

  def self.down
    change_table :documents do |t|
      t.remove_references :documentable, :polymorphic => true
    end
  end


end

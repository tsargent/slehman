class AddReferencesToLinks < ActiveRecord::Migration

  def self.up
    change_table :links do |t|
      t.references :linkable, :polymorphic => true
    end
  end

  def self.down
    change_table :links do |t|
      t.remove_references :linkable, :polymorphic => true
    end
  end

end

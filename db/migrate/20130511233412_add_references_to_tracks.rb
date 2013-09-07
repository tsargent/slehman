class AddReferencesToTracks < ActiveRecord::Migration
  def self.up
    change_table :tracks do |t|
      t.references :trackable, :polymorphic => true
    end
  end

  def self.down
    change_table :tracks do |t|
      t.remove_references :trackable, :polymorphic => true
    end
  end
end

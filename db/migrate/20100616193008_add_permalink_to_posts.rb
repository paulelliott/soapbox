class AddPermalinkToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :permalink, :string
    add_index :posts, :permalink, :unique => true
  end

  def self.down
    remove_index :posts, :column => :permalink
    remove_column :posts, :permalink
  end
end

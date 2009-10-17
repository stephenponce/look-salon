class AddOrderToTags < ActiveRecord::Migration
  def self.up
    add_column :tags, :order, :integer
  end

  def self.down
    remove_column :tags, :order
  end
end

class AddImageIdToStylist < ActiveRecord::Migration
  def self.up
    add_column :stylists, :image_id, :integer
  end

  def self.down
    remove_column :stylists, :image_id
  end
end

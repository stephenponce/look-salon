class AddLocationToImage < ActiveRecord::Migration

  def self.up
    add_column :images, :location, :string
  end
  def self.down
    drop_column :images, :location
  end

end

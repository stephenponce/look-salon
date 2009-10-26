class AddImageTypeToImages < ActiveRecord::Migration
  def self.up
    add_column :images, :image_type, :string
  end

  def self.down
    remove_column :images, :image_type, :string
  end
end

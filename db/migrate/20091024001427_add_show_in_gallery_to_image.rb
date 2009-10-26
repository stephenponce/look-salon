class AddShowInGalleryToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :show_in_gallery, :boolean, :default=> true, :null=> false
  end

  def self.down
    remove_column :images, :show_in_gallery
  end
end

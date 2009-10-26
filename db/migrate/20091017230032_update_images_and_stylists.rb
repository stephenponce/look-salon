class UpdateImagesAndStylists < ActiveRecord::Migration
    remove_column :stylists, :image_id
    remove_column :stylists, :message

    add_column :stylists, :bio, :text
    add_column :stylists, :title, :string

    add_column :images, :stylist_id, :integer
  def self.up
  end

  def self.down
    add_column :stylists, :image_id, :integer
    add_column :stylists, :message, :string

    remove_column :stylists, :bio
    remove_column :stylists, :title

    remove_column :images, :stylist_id
  end
end

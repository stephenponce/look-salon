class RenameImageIdId < ActiveRecord::Migration
  def self.up
    rename_column :stylists, :image_id_id, :image_id
  end

  def self.down
    rename_column :stylists, :image_id, :image_id_id
  end
end

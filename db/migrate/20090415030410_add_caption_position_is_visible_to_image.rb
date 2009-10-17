class AddCaptionPositionIsVisibleToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :caption, :string
    add_column :images, :position, :integer
    add_column :images, :is_visible, :boolean
  end

  def self.down
    remove_column :images, :is_visible
    remove_column :images, :position
    remove_column :images, :caption
  end
end

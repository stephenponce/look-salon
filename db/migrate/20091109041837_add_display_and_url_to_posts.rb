class AddDisplayAndUrlToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :display, :boolean
    add_column :posts, :url, :string
    remove_column :posts, :post_type
  end

  def self.down
    remove_column :posts, :url
    remove_column :posts, :display
    add_column :posts, :post_type, :string
  end
end

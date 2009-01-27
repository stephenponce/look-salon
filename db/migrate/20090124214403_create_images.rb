class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :filename
      t.string :content_type
      t.integer :size
      t.integer :height
      t.integer :width
      t.integer :parent_id
      t.string  :thumbnail 

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end

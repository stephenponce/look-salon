class CreateStylists < ActiveRecord::Migration
  def self.up
    create_table :stylists do |t|
      t.string :name
      t.references :image_id
      t.string :message

      t.timestamps
    end
  end

  def self.down
    drop_table :stylists
  end
end

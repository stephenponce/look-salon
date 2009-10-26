class CreatePromos < ActiveRecord::Migration
  def self.up
    create_table :promos do |t|
      t.string :title
      t.string :code
      t.date :valid_date
      t.boolean :is_valid
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :promos
  end
end

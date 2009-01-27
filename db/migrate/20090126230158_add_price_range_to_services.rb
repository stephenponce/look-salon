class AddPriceRangeToServices < ActiveRecord::Migration
  def self.up
    add_column :services, :price_range, :string
    remove_column :services, :price
  end

  def self.down
    remove_column :services, :price_range
    add_column :services, :price, :integer
  end
end

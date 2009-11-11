class AddNewFieldsToPromos < ActiveRecord::Migration
  def self.up
    add_column :promos, :restrictions, :text
    add_column :promos, :display_status, :boolean
    add_column :promos, :service_id, :integer
  end

  def self.down
    remove_column :promos, :service_id
    remove_column :promos, :display_status
    remove_column :promos, :restrictions
  end
end

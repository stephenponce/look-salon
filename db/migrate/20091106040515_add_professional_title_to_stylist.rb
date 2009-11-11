class AddProfessionalTitleToStylist < ActiveRecord::Migration
  def self.up
    add_column :stylists, :professional_title, :string
  end

  def self.down
    remove_column :stylists, :professional_title
  end
end

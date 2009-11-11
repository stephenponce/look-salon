class AddHiddenPromoToPromos < ActiveRecord::Migration
  def self.up
    add_column :promos, :hidden_promo, :boolean
  end

  def self.down
    remove_column :promos, :hidden_promo
  end
end

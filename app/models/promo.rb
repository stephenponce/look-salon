class Promo < ActiveRecord::Base
  validates_presence_of :title, :description, :display_status
end

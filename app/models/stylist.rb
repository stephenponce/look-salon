class Stylist < ActiveRecord::Base
  belongs_to :image
  validates_presence_of :name, :professional_title, :bio
end

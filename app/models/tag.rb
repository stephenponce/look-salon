class Tag < ActiveRecord::Base
  has_many :services

  validates_uniqueness_of :order
end

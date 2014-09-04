class Line < ActiveRecord::Base
  has_many :stops
  has_many :autobuses
  has_many :stations, through: :stops
  validates :name, :presence => true

end


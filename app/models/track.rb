class Track < ApplicationRecord
  validates_presence_of :electrodomestic
  validates_presence_of :day
  validates_presence_of :time_connected
  validates_presence_of :watts

  belongs_to :user
end

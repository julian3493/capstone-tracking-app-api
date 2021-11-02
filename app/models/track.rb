class Track < ApplicationRecord
  validates_presence_of :sport
  validates_presence_of :day
  validates_presence_of :distance
  validates_presence_of :moving_time

  belongs_to :user
end

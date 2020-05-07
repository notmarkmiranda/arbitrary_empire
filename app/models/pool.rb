class Pool < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :bet_cut_off_time
  validates_presence_of :end_time

  belongs_to :league
  belongs_to :user
end

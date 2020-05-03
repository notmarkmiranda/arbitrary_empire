class Membership < ApplicationRecord
  validates_uniqueness_of :league_id, scope: :user_id

  belongs_to :league
  belongs_to :user
end

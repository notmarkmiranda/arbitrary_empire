class Membership < ApplicationRecord
  validates_uniqueness_of :league_id, scope: :user_id

  enum role: [:member, :admin]

  belongs_to :league
  belongs_to :user
end

class League < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: :user_id

  validates :name, uniqueness: true
end

class League < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: :user_id
  has_many :memberships

  validates :name, uniqueness: true

  after_create :create_adminship

  private

  def create_adminship
    memberships.find_or_create_by(role: 1, user: owner)
  end
end

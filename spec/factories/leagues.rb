FactoryBot.define do
  factory :league do
    sequence(:name) { |n| "League#{n}" }
    owner
  end
end

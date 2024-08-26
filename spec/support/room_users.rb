FactoryBot.define do
  factory :romm_user do
    association :user
    association :room
  end
end
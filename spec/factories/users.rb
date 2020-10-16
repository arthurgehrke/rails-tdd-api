FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "any_user##{n}" }
    name { "any_name" }
    url { "any_url" }
    avatar_url { "any_avatar_url" }
    provider { "any_provider" }
  end
end

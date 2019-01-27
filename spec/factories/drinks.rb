FactoryBot.define do
  factory :drinks do
    sequence(:title) { |n| "#{Faker::Lorem.word}-#{n}"}
  end
end

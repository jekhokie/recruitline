FactoryBot.define do
  factory :screening do
    interviewer
    candidate

    notes Faker::Lorem.paragraph
  end
end

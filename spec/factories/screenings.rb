FactoryBot.define do
  factory :screening do
    interviewer
    candidate
    screening_type

    notes Faker::Lorem.paragraph

    factory :screening_no_interviewer do
      interviewer nil
    end
  end
end

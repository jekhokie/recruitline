FactoryBot.define do
  factory :screening_type do
    name Faker::Lorem.word
    time_minutes 1

    factory :screening_type_no_name do
      name ""
    end

    factory :screening_type_no_time_minutes do
      time_minutes ""
    end
  end
end

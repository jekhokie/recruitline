FactoryBot.define do
  factory :interviewer do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name

    factory :interviewer_no_first_name do
      first_name ""
    end
  end
end

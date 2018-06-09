FactoryBot.define do
  factory :recruiter do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name

    factory :recruiter_no_first_name do
      first_name ""
    end
  end
end

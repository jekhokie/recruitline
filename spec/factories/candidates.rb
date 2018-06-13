FactoryBot.define do
  factory :candidate do
    recruiter
    requisition
    decision

    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    email Faker::Internet.email
    phone Faker::PhoneNumber.phone_number

    factory :candidate_no_first_name do
      first_name ""
    end
  end
end

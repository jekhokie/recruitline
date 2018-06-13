FactoryBot.define do
  factory :decision do
    name Faker::Lorem.word

    factory :decision_no_name do
      name ""
    end
  end
end

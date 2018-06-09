FactoryBot.define do
  factory :recruiter do
    first_name "Joe"
    last_name "Schmoe"

    factory :recruiter_no_first_name do
      first_name ""
    end
  end
end

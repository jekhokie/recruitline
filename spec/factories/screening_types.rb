FactoryBot.define do
  factory :screening_type do
    name "MyString"
    time_minutes 1

    factory :screening_type_no_name do
      name ""
    end
  end
end

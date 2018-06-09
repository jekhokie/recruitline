FactoryBot.define do
  factory :requisition do
    recruiter

    title Faker::Job.title
    open_date "2018-06-08"
    close_date "2018-12-01"

		factory :requisition_no_title do
			title ""
		end
  end
end

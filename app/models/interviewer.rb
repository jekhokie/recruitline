class Interviewer < ApplicationRecord
  validates :first_name, presence: { message: "for interviewer can't be blank" }
  validates :last_name, presence: { message: "for interviewer can't be blank" }
end

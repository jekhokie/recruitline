class Recruiter < ApplicationRecord
  validates :first_name, presence: { :message => "for recruiter can't be blank" }
  validates :last_name, presence: { :message => "for recruiter can't be blank" }

	has_many :candidates
end

class Recruiter < ApplicationRecord
  validates :first_name, presence: { message: "for recruiter can't be blank" }
  validates :last_name, presence: { message: "for recruiter can't be blank" }

	has_many :candidates
  has_many :requisitions

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end

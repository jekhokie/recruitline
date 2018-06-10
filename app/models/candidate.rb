class Candidate < ApplicationRecord
  validates :first_name, presence: { message: "for candidate can't be blank" }
 
  belongs_to :requisition
	belongs_to :recruiter

  has_many :screenings

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end

class Interviewer < ApplicationRecord
  validates :first_name, presence: { message: "for interviewer can't be blank" }
  validates :last_name, presence: { message: "for interviewer can't be blank" }

  has_many :screenings

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end

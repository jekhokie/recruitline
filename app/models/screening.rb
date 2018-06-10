class Screening < ApplicationRecord
  validates :interviewer, presence: { message: "for screening can't be blank" }
  validates :candidate, presence: { message: "for screening can't be blank" }
  validates :screening_type, presence: { message: "for screening can't be blank" }

	belongs_to :interviewer
  belongs_to :candidate
  belongs_to :screening_type
end

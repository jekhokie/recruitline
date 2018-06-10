class Screening < ApplicationRecord
	belongs_to :interviewer
  belongs_to :candidate
  belongs_to :screening_type
end

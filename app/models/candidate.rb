class Candidate < ApplicationRecord
  validates :first_name, presence: { :message => "for candidate can't be blank" }

  belongs_to :requisition
end

class Requisition < ApplicationRecord
  validates :title, presence: { message: "for requisition can't be blank" }
  validates :open_date, presence: { message: "for requisition can't be blank" }

  has_many :candidates
	belongs_to :recruiter
end

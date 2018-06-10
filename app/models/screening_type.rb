class ScreeningType < ApplicationRecord
  validates :name, presence: { message: "for screening_type can't be blank" }
  validates :time_minutes, presence: { message: "for screening_type can't be blank" }
end

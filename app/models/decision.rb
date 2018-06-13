class Decision < ApplicationRecord
  validates :name, presence: { message: "for decision can't be blank" }

  has_many :candidates
end

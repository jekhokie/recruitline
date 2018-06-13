class Decision < ApplicationRecord
  validates :name, presence: { message: "for decision can't be blank" }
end

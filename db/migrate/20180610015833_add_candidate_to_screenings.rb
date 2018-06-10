class AddCandidateToScreenings < ActiveRecord::Migration[5.2]
  def change
    add_reference :screenings, :candidate, foreign_key: true
  end
end

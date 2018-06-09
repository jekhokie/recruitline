class AddRecruiterRefToCandidate < ActiveRecord::Migration[5.2]
  def change
    add_reference :candidates, :recruiter, foreign_key: true
  end
end

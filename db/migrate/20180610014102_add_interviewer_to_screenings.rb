class AddInterviewerToScreenings < ActiveRecord::Migration[5.2]
  def change
    add_reference :screenings, :interviewer, foreign_key: true
  end
end

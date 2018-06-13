class AddPassHrBooleanToCandidate < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :pass_hr_screening, :boolean
  end
end

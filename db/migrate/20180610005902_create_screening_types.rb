class CreateScreeningTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :screening_types do |t|
      t.string :name
      t.integer :time_minutes

      t.timestamps
    end
  end
end

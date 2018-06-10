class CreateScreenings < ActiveRecord::Migration[5.2]
  def change
    create_table :screenings do |t|
      t.text :notes

      t.timestamps
    end
  end
end

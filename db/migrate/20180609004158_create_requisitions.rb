class CreateRequisitions < ActiveRecord::Migration[5.2]
  def change
    create_table :requisitions do |t|
      t.string :title
      t.date :open_date
      t.date :close_date

      t.timestamps
    end
  end
end

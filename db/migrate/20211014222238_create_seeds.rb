class CreateSeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :seeds do |t|
      t.string :name
      t.string :planting_depth
      t.string :days_to_germinate
      t.string :time_to_harvest
      t.string :date_planted
      t.boolean :sun_exposure
      t.string :expected_plant_height
      t.string :notes

      t.timestamps
    end
  end
end

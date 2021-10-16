class AddSunExposureToSeed < ActiveRecord::Migration[5.2]
  def change
    add_column :seeds, :sun_exposure, :integer, default: 3, null: true
  end
end

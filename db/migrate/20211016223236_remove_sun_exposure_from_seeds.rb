class RemoveSunExposureFromSeeds < ActiveRecord::Migration[5.2]
  def change
    remove_column :seeds, :sun_exposure, :boolean
  end
end

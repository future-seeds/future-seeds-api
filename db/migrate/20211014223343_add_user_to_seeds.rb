class AddUserToSeeds < ActiveRecord::Migration[5.2]
  def change
    add_reference :seeds, :user, foreign_key: true
  end
end

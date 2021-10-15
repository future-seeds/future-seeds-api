class CreateJournalEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :journal_entries do |t|
      t.string :date
      t.string :description

      t.timestamps
    end
  end
end

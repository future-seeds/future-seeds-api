class AddUserToJournalEntries < ActiveRecord::Migration[5.2]
  def change
    add_reference :journal_entries, :user, foreign_key: true
  end
end

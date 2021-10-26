# frozen_string_literal: true

class Mutations::CreateJournalEntry < ::Mutations::BaseMutation
  argument :id, ID, required: false
  argument :date, String, required: false
  argument :description, String, required: false
  argument :user_id, ID, required: false

  type Types::JournalEntryType

  field :journal_entry, Types::JournalEntryType, null: false
  field :errors, [String], null: false

  def resolve(date:, description:, user_id:)
    journal_entry = JournalEntry.create!(date: date,
                                         description: description,
                                         user_id: user_id)
    if journal_entry.save
      journal_entry
    else
      {
        journal_entry: nil,
        errors: journal_entry.errors.full_messages
      }
    end
  end
end

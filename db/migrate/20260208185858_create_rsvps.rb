class CreateRsvps < ActiveRecord::Migration[8.1]
  def change
    create_table :rsvps do |t|
      t.string :attendee_name, null: false
      t.references :event, null: false, foreign_key: true
      t.integer :number_attending, limit: 2, null: false
      t.string :rsvp_status, null: false
      t.timestamps
    end
  end
end

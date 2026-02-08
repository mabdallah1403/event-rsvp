class CreateEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :events do |t|
      t.text :title, null: false
      t.references :organizer, null: false, foreign_key: { to_table: :users }
      t.integer :maximum_attendees, limit: 2, null: false
      t.timestamps
    end
  end
end

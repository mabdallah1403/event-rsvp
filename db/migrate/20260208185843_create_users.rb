class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.text :password_hash, null: false
      t.datetime :deleted_at
      t.timestamps
    end
  end
end

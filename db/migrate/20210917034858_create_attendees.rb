class CreateAttendees < ActiveRecord::Migration[6.1]
  def change
    create_table :attendees do |t|
      t.string :first_name
      t.string :last_name
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end

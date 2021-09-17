class CreateRules < ActiveRecord::Migration[6.1]
  def change
    create_table :rules do |t|
      t.references :region
      t.string :value

      t.timestamps
    end
  end
end

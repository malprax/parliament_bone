class CreateLegislations < ActiveRecord::Migration
  def change
    create_table :legislations do |t|
      t.string :parliament_id

      t.timestamps null: false
    end
  end
end

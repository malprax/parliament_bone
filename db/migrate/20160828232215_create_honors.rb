class CreateHonors < ActiveRecord::Migration
  def change
    create_table :honors do |t|
      t.string :parliament_id

      t.timestamps null: false
    end
  end
end

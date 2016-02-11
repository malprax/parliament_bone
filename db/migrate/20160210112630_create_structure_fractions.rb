class CreateStructureFractions < ActiveRecord::Migration
  def change
    create_table :structure_fractions do |t|
      t.integer :parliament_member_id
      t.integer :level_id
      t.timestamps null: false
    end
  end
end

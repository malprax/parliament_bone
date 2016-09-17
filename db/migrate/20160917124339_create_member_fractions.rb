class CreateMemberFractions < ActiveRecord::Migration
  def change
    create_table :member_fractions do |t|
      t.string :parliament_id
      t.string :structural_id
      t.string :fraction_id

      t.timestamps null: false
    end
  end
end

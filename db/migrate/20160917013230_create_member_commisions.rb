class CreateMemberCommisions < ActiveRecord::Migration
  def change
    create_table :member_commisions do |t|
      t.string :parliament_id
      t.string :commision_id
      t.string :structural_id

      t.timestamps null: false
    end
  end
end

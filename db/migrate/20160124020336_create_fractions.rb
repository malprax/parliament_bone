class CreateFractions < ActiveRecord::Migration
  def change
    create_table :fractions do |t|
      t.string :name
      t.integer :level_id
      # t.string :parliament_member_id
      # t.string :jabatan
      # t.integer :priority

      t.timestamps null: false
    end
  end
end

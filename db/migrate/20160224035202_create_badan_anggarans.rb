class CreateBadanAnggarans < ActiveRecord::Migration
  def change
    create_table :badan_anggarans do |t|
      t.integer :level

      t.timestamps null: false
    end
  end
end

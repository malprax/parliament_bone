class CreateBadanKehormatans < ActiveRecord::Migration
  def change
    create_table :badan_kehormatans do |t|
      t.integer :parliament_member_id

      t.timestamps null: false
    end
  end
end

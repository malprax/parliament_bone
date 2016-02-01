class CreateComissions < ActiveRecord::Migration
  def change
    create_table :comissions do |t|
      t.string :code
      t.integer :parliament_member_id
      t.string :comment

      t.timestamps null: false
    end
  end
end

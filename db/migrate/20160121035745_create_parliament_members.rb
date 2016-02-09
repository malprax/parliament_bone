class CreateParliamentMembers < ActiveRecord::Migration
  def change
    create_table :parliament_members do |t|
      t.string :name
      t.integer :fraction_id
      t.integer :level_id
      
      t.timestamps null: false
    end
  end
end

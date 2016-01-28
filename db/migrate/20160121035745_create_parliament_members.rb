class CreateParliamentMembers < ActiveRecord::Migration
  def change
    create_table :parliament_members do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end

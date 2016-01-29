class CreateParliamentMembers < ActiveRecord::Migration
  def change
    create_table :parliament_members do |t|
      t.string :name
      t.string :fraksi
      t.string :dapil
      t.timestamps null: false
    end
  end
end

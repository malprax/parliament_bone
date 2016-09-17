class CreateCommisions < ActiveRecord::Migration
  def change
    create_table :commisions do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end

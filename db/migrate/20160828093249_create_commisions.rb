class CreateCommisions < ActiveRecord::Migration
  def change
    create_table :commisions do |t|
      t.string :name
      t.string :position

      t.timestamps null: false
    end
  end
end

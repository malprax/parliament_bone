class CreateStructurals < ActiveRecord::Migration
  def change
    create_table :structurals do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

class CreateComissions < ActiveRecord::Migration
  def change
    create_table :comissions do |t|
      t.string :name
      t.string :code
      t.string :fraction_id
      t.string :comment

      t.timestamps null: false
    end
  end
end

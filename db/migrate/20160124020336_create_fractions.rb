class CreateFractions < ActiveRecord::Migration
  def change
    create_table :fractions do |t|
      t.string :name
      # t.string :jabatan


      t.timestamps null: false
    end
  end
end

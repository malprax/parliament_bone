class CreateDapils < ActiveRecord::Migration
  def change
    create_table :dapils do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

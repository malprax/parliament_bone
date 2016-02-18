class CreateBadanMusyawarahs < ActiveRecord::Migration
  def change
    create_table :badan_musyawarahs do |t|
      t.string :level

      t.timestamps null: false
    end
  end
end

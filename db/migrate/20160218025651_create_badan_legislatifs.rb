class CreateBadanLegislatifs < ActiveRecord::Migration
  def change
    create_table :badan_legislatifs do |t|
      t.string :level

      t.timestamps null: false
    end
  end
end

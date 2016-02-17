class CreateParliamentMembers < ActiveRecord::Migration
  def change
    create_table :parliament_members do |t|
      t.string :name
      t.integer :dapil_id
      t.integer :fraction_id
      t.integer :level_fraction_id
      t.integer :badan_anggaran_id
      t.integer :badan_musyawarah_id
      t.integer :badan_kehormatan_id
      t.integer :badan_legislatif_id
      t.timestamps null: false
    end
  end
end

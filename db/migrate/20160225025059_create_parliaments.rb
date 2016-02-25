class CreateParliaments < ActiveRecord::Migration
  def change
    create_table :parliaments do |t|
      t.string :name
      t.string :dapil
      t.string :fraksi
      t.string :jabatan_fraksi
      t.string :komisi
      t.string :jabatan_komisi
      t.string :jabatan_badan_anggaran
      t.string :jabatan_badan_musyawarah
      t.string :jabatan_badan_kehormatan
      t.string :jabatan_badan_legislatif

      t.timestamps null: false
    end
  end
end

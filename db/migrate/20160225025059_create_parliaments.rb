class CreateParliaments < ActiveRecord::Migration
  def change
    create_table :parliaments do |t|
      t.string :name
      t.string :tempat_lahir
      t.string :tanggal_lahir
      t.integer :dapil_id
      t.timestamps null: false
    end
  end
end

class RemoveUserToParliaments < ActiveRecord::Migration
  def change
    remove_column :parliaments, :fraksi, :string
    remove_column :parliaments, :jabatan_fraksi, :string
    remove_column :parliaments, :komisi, :string
    remove_column :parliaments, :jabatan_komisi, :string
    remove_column :parliaments, :jabatan_badan_anggaran, :string
    remove_column :parliaments, :jabatan_badan_musyawarah, :string
    remove_column :parliaments, :jabatan_badan_kehormatan, :string
    remove_column :parliaments, :jabatan_badan_legislatif, :string
  end
end

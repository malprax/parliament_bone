json.array!(@parliaments) do |parliament|
  json.extract! parliament, :id, :name, :dapil, :fraksi, :jabatan_fraksi, :komisi, :jabatan_komisi, :jabatan_badan_anggaran, :jabatan_badan_musyawarah, :jabatan_badan_kehormatan, :jabatan_badan_legislatif
  json.url parliament_url(parliament, format: :json)
end

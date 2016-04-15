# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# t.string :name
# t.string :tempat_lahir
# t.date   :tanggal_lahir
# t.string :dapil
# t.string :fraksi
# t.string :jabatan_fraksi
# t.string :komisi
# t.string :jabatan_komisi
# t.string :jabatan_badan_anggaran
# t.string :jabatan_badan_musyawarah
# t.string :jabatan_badan_kehormatan
# t.string :jabatan_badan_legislatif

#parliament_member
#Komisi I
Parliament.create(name: 'Drs. Andi Akbar Yahya, MM', tempat_lahir: 'Timurung', tanggal_lahir: '20 April 1970', fraksi: 'Golongan Karya')
Parliament.create(name: 'Andi Samsidar Ishak', tempat_lahir: 'Arasoe', tanggal_lahir: '5 April 1971', fraksi: 'Gerindra')
Parliament.create(name: 'Drs. A. Taufiq Kadir, MH', tempat_lahir: 'Libureng', tanggal_lahir: '9 September 1957', fraksi: 'Nasdem')
Parliament.create(name: 'Drs. H. A. M. Amin Mangussara', tempat_lahir: 'Bone', tanggal_lahir: '25 September 1944', fraksi: 'Golongan Karya', komisi: 'I', jabatan_komisi: 'Ketua')
Parliament.create(name: 'H. Saipullah Latif, SE', tempat_lahir: 'Bone', tanggal_lahir: '3 April 1967', fraksi: 'PNBK', komisi: 'I', jabatan_komisi: 'Wakil Ketua')
Parliament.create(name: 'Suharni', tempat_lahir: 'Ujung Lamuru', tanggal_lahir: '16 Oktober 1977', fraksi: 'Nasdem', komisi: 'I', jabatan_komisi: 'Sekretaris')
Parliament.create(name: 'A. Adriana', tempat_lahir: 'Panyiwi', tanggal_lahir: '7 Juni 1976', fraksi: 'PAN', komisi: 'I', jabatan_komisi: 'Anggota')
Parliament.create(name: 'H. Ramang', tempat_lahir: 'Taccipi', tanggal_lahir: '2 Desember 1960', fraksi: 'Gerindra', komisi: 'I', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Samsuddin Alfian Kalla, S.Ip', tempat_lahir: 'Panjalili', tanggal_lahir: '1 Februari 1975', fraksi: 'Keadilan Persatuan', komisi: 'I', jabatan_komisi: 'Anggota')
Parliament.create(name: 'H. Ramang', tempat_lahir: 'Taccipi', tanggal_lahir: '2 Desember 1960', fraksi: 'Golongan Karya', komisi: 'I', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Samasuddin Alfian Kalla, S.Ip', tempat_lahir: 'Panjalili', tanggal_lahir: '1 Febuari 1975', fraksi: 'Keadilan Persatuan', komisi: 'I', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Andi Mappanyukki Takka', tempat_lahir: 'Bone', tanggal_lahir: '15 November 1968', fraksi: 'Golongan Karya', komisi: 'I', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Drs. A. Atoro', tempat_lahir: 'Sanrego', tanggal_lahir: '23 Maret 1967', fraksi: 'Golongan Karya', komisi: 'I', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Darwis, SH', tempat_lahir: 'Tajong', tanggal_lahir: '1 Juli 1964', fraksi: 'Golongan Karya', komisi: 'I', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Andi Suaedi, SH, MH', tempat_lahir: 'Sanrego', tanggal_lahir: '31 Desember 1978', fraksi: 'Demokrat', komisi: 'I', jabatan_komisi: 'Anggota')

#Komisi II
Parliament.create(name: 'A. Muh. Idris Alang, SH, MH', tempat_lahir: 'Unra', tanggal_lahir: '12 September 1967', fraksi: 'Golongan Karya', komisi: 'II', jabatan_komisi: 'Ketua')
Parliament.create(name: 'Bustanil Arifin Amri, SE', tempat_lahir: 'Bone', tanggal_lahir: '5 Februari 1987', fraksi: 'Gerindra', komisi: 'II', jabatan_komisi: 'Wakil Ketua')
Parliament.create(name: 'Ir. Efendi', tempat_lahir: 'Bone', tanggal_lahir: '10 April 1972', fraksi: 'Keadilan Persatuan', komisi: 'II', jabatan_komisi: 'Sekretaris')
Parliament.create(name: 'Herman, ST', tempat_lahir: 'Palattae', tanggal_lahir: '20 Juni 1979', fraksi: 'PAN', komisi: 'II', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Abulkhaeri, SE', tempat_lahir: 'Watampone', tanggal_lahir: '28 Desember 1962', fraksi: 'Nasdem', komisi: 'II', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Ir. Bahtiar Malla', tempat_lahir: 'Bone', tanggal_lahir: '1 Juli 1970', fraksi: 'PNBK', komisi: 'II', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Rusdi', tempat_lahir: 'Bajoe', tanggal_lahir: '17 Agustus 1979', fraksi: 'PNBK', komisi: 'II', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Irwandi Burhan, SE', tempat_lahir: 'Lamuru', tanggal_lahir: '16 Oktober 1981', fraksi: 'Golongan Karya', komisi: 'II', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Andi Yusuf Akbar, S.Sos', tempat_lahir: 'Ujung Pandang', tanggal_lahir: '6 Desember 1987', fraksi: 'Golongan Karya', komisi: 'II', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Hj. Mintayu Samsuddin, SE', tempat_lahir: 'Watampone', tanggal_lahir: '29 Maret 1966', fraksi: 'Golongan Karya', komisi: 'II', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Muhammad Amir, SE', tempat_lahir: 'Lippujange', tanggal_lahir: '10 Mei 1971', fraksi: 'Demokrat', komisi: 'II', jabatan_komisi: 'Anggota')

#Komisi III
Parliament.create(name: 'A. Nursalam Nawir', tempat_lahir: 'Mare', tanggal_lahir: '4 April 1965', fraksi: 'PAN', komisi: 'III', jabatan_komisi: 'Ketua')
Parliament.create(name: 'H. Kaharuddin, SE', tempat_lahir: 'Bone', tanggal_lahir: '25 Desember 1970', fraksi: 'Demokrat', komisi: 'III', jabatan_komisi: 'Wakil Ketua')
Parliament.create(name: 'H. A. Sulam Mangampara', tempat_lahir: 'Bone', tanggal_lahir: '27 Juli 1947', fraksi: 'Golongan Karya', komisi: 'III', jabatan_komisi: 'Sekretaris')
Parliament.create(name: 'H. Abd. Hamid, SE', tempat_lahir: 'Bone', tanggal_lahir: '1 Juli 1967', fraksi: 'Gerindra', komisi: 'III', jabatan_komisi: 'Anggota')
Parliament.create(name: 'H. Ramlan', tempat_lahir: 'Pompanua', tanggal_lahir: '10 Oktober 1970', fraksi: 'Keadilan Persatuan', komisi: 'III', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Rudianto Amunir', tempat_lahir: 'Bajoe', tanggal_lahir: '14 Mei 1977', fraksi: 'Nasdem', komisi: 'III', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Risal SE', tempat_lahir: 'Bone', tanggal_lahir: '28 September 1985', fraksi: 'PNBK', komisi: 'III', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Andi Muhammad Nur', tempat_lahir: 'Bone', tanggal_lahir: '5 Januari 1958', fraksi: 'PNBK', komisi: 'III', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Abdul Rahim, S.Sos', tempat_lahir: 'Lompu', tanggal_lahir: '29 Desember 1970', fraksi: 'Golongan Karya', komisi: 'III', jabatan_komisi: 'Anggota')
Parliament.create(name: 'Hj. Adriani A. Page, SE', tempat_lahir: 'Bone', tanggal_lahir: '30 Desember 1974', fraksi: 'Golongan Karya', komisi: 'III', jabatan_komisi: 'Anggota')

#Komisi IV
Parliament.create(name: 'dr. A. Ryad Baso Padjalangi, S.Ked', tempat_lahir: 'Makassar', tanggal_lahir: '18 April 1988', fraksi: 'Golongan Karya', komisi: 'IV', jabatan_komisi: 'Ketua')
Parliament.create(name: 'Andi Muh. Saiful, SE', tempat_lahir: 'Pattiro Bajo', tanggal_lahir: '15 Juni 1965', fraksi: 'Keadilan Persatuan', komisi: 'IV', jabatan_komisi: 'Wakil Ketua')
Parliament.create(name: 'Rismono Sarlim', tempat_lahir: 'Watampone', tanggal_lahir: '1 April 1986', fraksi: 'PNBK', komisi: 'IV', jabatan_komisi: 'Sekretaris')

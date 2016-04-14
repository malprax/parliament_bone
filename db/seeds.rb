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
Parliament.create(name: 'Adhiguna Utama Sabril')
Parliament.create(name: 'Abdullah Fath')
Parliament.create(name: 'Resky Amalia Putri')

Parliament.create(name: 'Al Maghfirah Tiara Hisbaini')
Parliament.create(name: 'Abdullah Fath')
Parliament.create(name: 'Aulia Sabril')
Parliament.create(name: 'Riskawati Angraini')
Parliament.create(name: 'Nurul Islami')
Parliament.create(name: 'Muhammad Khadafi Adnan')
Parliament.create(name: 'Adhiguna Utama Sabril')
Parliament.create(name: 'Abdullah Fath')
Parliament.create(name: 'Resky Amalia Putri')

Parliament.create(name: 'Al Maghfirah Tiara Hisbaini')
Parliament.create(name: 'Abdullah Fath')
Parliament.create(name: 'Aulia Sabril')
Parliament.create(name: 'Riskawati Angraini')
Parliament.create(name: 'Nurul Islami')
Parliament.create(name: 'Muhammad Khadafi Adnan')
Parliament.create(name: 'Adhiguna Utama Sabril')
Parliament.create(name: 'Abdullah Fath')
Parliament.create(name: 'Resky Amalia Putri')

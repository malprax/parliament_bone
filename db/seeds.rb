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
#Ketua DPRD
Parliament.create(name: 'Drs. Andi Akbar Yahya, MM', tempat_lahir: 'Timurung', tanggal_lahir: '20 April 1970')
Parliament.create(name: 'Andi Samsidar Ishak', tempat_lahir: 'Arasoe', tanggal_lahir: '5 April 1971')
Parliament.create(name: 'Drs. A. Taufiq Kadir, MH', tempat_lahir: 'Libureng', tanggal_lahir: '9 September 1957')
Parliament.create(name: 'Usman. T', tempat_lahir: 'Tujue', tanggal_lahir: '1 Juli 1964')
#Komisi I
Parliament.create(name: 'Drs. H. A. M. Amin Mangussara', tempat_lahir: 'Bone', tanggal_lahir: '25 September 1944')
Parliament.create(name: 'H. Saipullah Latif, SE', tempat_lahir: 'Bone', tanggal_lahir: '3 April 1967')
Parliament.create(name: 'Suharni', tempat_lahir: 'Ujung Lamuru', tanggal_lahir: '16 Oktober 1977')
Parliament.create(name: 'A. Adriana', tempat_lahir: 'Panyiwi', tanggal_lahir: '7 Juni 1976')
Parliament.create(name: 'H. Ramang', tempat_lahir: 'Taccipi', tanggal_lahir: '2 Desember 1960')
Parliament.create(name: 'Samasuddin Alfian Kalla, S.Ip', tempat_lahir: 'Panjalili', tanggal_lahir: '1 Februari 1975')
Parliament.create(name: 'Andi Mappanyukki Takka', tempat_lahir: 'Bone', tanggal_lahir: '15 November 1968')
Parliament.create(name: 'Drs. A. Atoro', tempat_lahir: 'Sanrego', tanggal_lahir: '23 Maret 1967')
Parliament.create(name: 'Darwis, SH', tempat_lahir: 'Tajong', tanggal_lahir: '1 Juli 1964')
Parliament.create(name: 'Andi Suaedi, SH, MH', tempat_lahir: 'Sanrego', tanggal_lahir: '31 Desember 1978')

#Komisi II
Parliament.create(name: 'A. Muh. Idris Alang, SH, MH', tempat_lahir: 'Unra', tanggal_lahir: '12 September 1967')
Parliament.create(name: 'Bustanil Arifin Amri, SE', tempat_lahir: 'Bone', tanggal_lahir: '5 Februari 1987')
Parliament.create(name: 'Ir. Efendi', tempat_lahir: 'Bone', tanggal_lahir: '10 April 1972')
Parliament.create(name: 'Herman, ST', tempat_lahir: 'Palattae', tanggal_lahir: '20 Juni 1979')
Parliament.create(name: 'Abulkhaeri, SE', tempat_lahir: 'Watampone', tanggal_lahir: '28 Desember 1962')
Parliament.create(name: 'Ir. Bahtiar Malla', tempat_lahir: 'Bone', tanggal_lahir: '1 Juli 1970')
Parliament.create(name: 'Rusdi', tempat_lahir: 'Bajoe', tanggal_lahir: '17 Agustus 1979')
Parliament.create(name: 'Irwandi Burhan, SE', tempat_lahir: 'Lamuru', tanggal_lahir: '16 Oktober 1981')
Parliament.create(name: 'Andi Yusuf Akbar, S.Sos', tempat_lahir: 'Ujung Pandang', tanggal_lahir: '6 Desember 1987')
Parliament.create(name: 'Hj. Mintayu Samsuddin, SE', tempat_lahir: 'Watampone', tanggal_lahir: '29 Maret 1966')
Parliament.create(name: 'Muhammad Amir, SE', tempat_lahir: 'Lippujange', tanggal_lahir: '10 Mei 1971')

#Komisi III
Parliament.create(name: 'A. Nursalam Nawir', tempat_lahir: 'Mare', tanggal_lahir: '4 April 1965')
Parliament.create(name: 'H. Kaharuddin, SE', tempat_lahir: 'Bone', tanggal_lahir: '25 Desember 1970')
Parliament.create(name: 'H. A. Sulam Mangampara', tempat_lahir: 'Bone', tanggal_lahir: '27 Juli 1947')
Parliament.create(name: 'H. Abd. Hamid, SE', tempat_lahir: 'Bone', tanggal_lahir: '1 Juli 1967')
Parliament.create(name: 'H. Ramlan', tempat_lahir: 'Pompanua', tanggal_lahir: '10 Oktober 1970')
Parliament.create(name: 'Rudianto Amunir', tempat_lahir: 'Bajoe', tanggal_lahir: '14 Mei 1977')
Parliament.create(name: 'Risal SE', tempat_lahir: 'Bone', tanggal_lahir: '28 September 1985')
Parliament.create(name: 'Andi Muhammad Nur', tempat_lahir: 'Bone', tanggal_lahir: '5 Januari 1958')
Parliament.create(name: 'Abdul Rahim, S.Sos', tempat_lahir: 'Lompu', tanggal_lahir: '29 Desember 1970')
Parliament.create(name: 'Hj. Adriani A. Page, SE', tempat_lahir: 'Bone', tanggal_lahir: '30 Desember 1974')

#Komisi IV
Parliament.create(name: 'dr. A. Ryad Baso Padjalangi, S.Ked', tempat_lahir: 'Makassar', tanggal_lahir: '18 April 1988')
Parliament.create(name: 'Andi Muh. Saiful, SE', tempat_lahir: 'Pattiro Bajo', tanggal_lahir: '15 Juni 1965')
Parliament.create(name: 'Rismono Sarlim', tempat_lahir: 'Watampone', tanggal_lahir: '1 April 1986')


#parliament_member
#Ketua DPRD
# Parliament.create(name: 'Drs. Andi Akbar Yahya, MM', tempat_lahir: 'Timurung', tanggal_lahir: '20 April 1970')
# Parliament.create(name: 'Andi Samsidar Ishak', tempat_lahir: 'Arasoe', tanggal_lahir: '5 April 1971')
# Parliament.create(name: 'Drs. A. Taufiq Kadir, MH', tempat_lahir: 'Libureng', tanggal_lahir: '9 September 1957')
# Parliament.create(name: 'Usman. T', tempat_lahir: 'Tujue', tanggal_lahir: '1 Juli 1964')
# #Komisi I
# Parliament.create(name: 'Drs. H. A. M. Amin Mangussara', tempat_lahir: 'Bone', tanggal_lahir: '25 September 1944')
# Parliament.create(name: 'H. Saipullah Latif, SE', tempat_lahir: 'Bone', tanggal_lahir: '3 April 1967')
# Parliament.create(name: 'Suharni', tempat_lahir: 'Ujung Lamuru', tanggal_lahir: '16 Oktober 1977')
# Parliament.create(name: 'A. Adriana', tempat_lahir: 'Panyiwi', tanggal_lahir: '7 Juni 1976')
# Parliament.create(name: 'H. Ramang', tempat_lahir: 'Taccipi', tanggal_lahir: '2 Desember 1960')
# Parliament.create(name: 'Samasuddin Alfian Kalla, S.Ip', tempat_lahir: 'Panjalili', tanggal_lahir: '1 Februari 1975')
# Parliament.create(name: 'Andi Mappanyukki Takka', tempat_lahir: 'Bone', tanggal_lahir: '15 November 1968')
# Parliament.create(name: 'Drs. A. Atoro', tempat_lahir: 'Sanrego', tanggal_lahir: '23 Maret 1967')
# Parliament.create(name: 'Darwis, SH', tempat_lahir: 'Tajong', tanggal_lahir: '1 Juli 1964')
# Parliament.create(name: 'Andi Suaedi, SH, MH', tempat_lahir: 'Sanrego', tanggal_lahir: '31 Desember 1978')
#
# #Komisi II
# Parliament.create(name: 'A. Muh. Idris Alang, SH, MH', tempat_lahir: 'Unra', tanggal_lahir: '12 September 1967')
# Parliament.create(name: 'Bustanil Arifin Amri, SE', tempat_lahir: 'Bone', tanggal_lahir: '5 Februari 1987')
# Parliament.create(name: 'Ir. Efendi', tempat_lahir: 'Bone', tanggal_lahir: '10 April 1972')
# Parliament.create(name: 'Herman, ST', tempat_lahir: 'Palattae', tanggal_lahir: '20 Juni 1979')
# Parliament.create(name: 'Abulkhaeri, SE', tempat_lahir: 'Watampone', tanggal_lahir: '28 Desember 1962')
# Parliament.create(name: 'Ir. Bahtiar Malla', tempat_lahir: 'Bone', tanggal_lahir: '1 Juli 1970')
# Parliament.create(name: 'Rusdi', tempat_lahir: 'Bajoe', tanggal_lahir: '17 Agustus 1979')
# Parliament.create(name: 'Irwandi Burhan, SE', tempat_lahir: 'Lamuru', tanggal_lahir: '16 Oktober 1981')
# Parliament.create(name: 'Andi Yusuf Akbar, S.Sos', tempat_lahir: 'Ujung Pandang', tanggal_lahir: '6 Desember 1987')
# Parliament.create(name: 'Hj. Mintayu Samsuddin, SE', tempat_lahir: 'Watampone', tanggal_lahir: '29 Maret 1966')
# Parliament.create(name: 'Muhammad Amir, SE', tempat_lahir: 'Lippujange', tanggal_lahir: '10 Mei 1971')
#
# #Komisi III
# Parliament.create(name: 'A. Nursalam Nawir', tempat_lahir: 'Mare', tanggal_lahir: '4 April 1965')
# Parliament.create(name: 'H. Kaharuddin, SE', tempat_lahir: 'Bone', tanggal_lahir: '25 Desember 1970')
# Parliament.create(name: 'H. A. Sulam Mangampara', tempat_lahir: 'Bone', tanggal_lahir: '27 Juli 1947')
# Parliament.create(name: 'H. Abd. Hamid, SE', tempat_lahir: 'Bone', tanggal_lahir: '1 Juli 1967')
# Parliament.create(name: 'H. Ramlan', tempat_lahir: 'Pompanua', tanggal_lahir: '10 Oktober 1970')
# Parliament.create(name: 'Rudianto Amunir', tempat_lahir: 'Bajoe', tanggal_lahir: '14 Mei 1977')
# Parliament.create(name: 'Risal SE', tempat_lahir: 'Bone', tanggal_lahir: '28 September 1985')
# Parliament.create(name: 'Andi Muhammad Nur', tempat_lahir: 'Bone', tanggal_lahir: '5 Januari 1958')
# Parliament.create(name: 'Abdul Rahim, S.Sos', tempat_lahir: 'Lompu', tanggal_lahir: '29 Desember 1970')
# Parliament.create(name: 'Hj. Adriani A. Page, SE', tempat_lahir: 'Bone', tanggal_lahir: '30 Desember 1974')
#
# #Komisi IV
# Parliament.create(name: 'dr. A. Ryad Baso Padjalangi, S.Ked', tempat_lahir: 'Makassar', tanggal_lahir: '18 April 1988')
# Parliament.create(name: 'Andi Muh. Saiful, SE', tempat_lahir: 'Pattiro Bajo', tanggal_lahir: '15 Juni 1965')
# Parliament.create(name: 'Rismono Sarlim', tempat_lahir: 'Watampone', tanggal_lahir: '1 April 1986')

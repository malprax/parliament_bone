class CreateFractionsParliamentMembers < ActiveRecord::Migration
  def change
    #code
    create_table :fractions_parliament_members, :id => false do |t|
      t.belongs_to :fraction, index: true
      t.belongs_to :parliament_member, index: true
    end
  end
end


# lab gambar teknik
# lab desain dan pemodelan
# lab mekatronika
# lab mekanika fluida
# lab proses produksi
# lab prestasi mesin
# lab mesin fluida

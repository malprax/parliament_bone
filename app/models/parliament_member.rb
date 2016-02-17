# == Schema Information
#
# Table name: parliament_members
#
#  id                  :integer          not null, primary key
#  name                :string
#  dapil_id            :integer
#  fraction_id         :integer
#  level_fraction_id   :integer
#  badan_anggaran_id   :integer
#  badan_musyawarah_id :integer
#  badan_kehormatan_id :integer
#  badan_legislatif_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class ParliamentMember < ActiveRecord::Base
  belongs_to :structure_fraction
  has_many :comissions, dependent: :destroy
  # has_and_belongs_to_many :fractions
  def fraksi_gabung_nama
    "#{self.fraksi.titleize} - #{self.name.titleize}"
  end

end

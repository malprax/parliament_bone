# == Schema Information
#
# Table name: parliaments
#
#  id                       :integer          not null, primary key
#  name                     :string
#  dapil                    :string
#  fraksi                   :string
#  jabatan_fraksi           :string
#  komisi                   :string
#  jabatan_komisi           :string
#  jabatan_badan_anggaran   :string
#  jabatan_badan_musyawarah :string
#  jabatan_badan_kehormatan :string
#  jabatan_badan_legislatif :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

require 'test_helper'

class ParliamentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

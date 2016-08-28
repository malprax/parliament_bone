# == Schema Information
#
# Table name: parliaments
#
#  id            :integer          not null, primary key
#  name          :string
#  tempat_lahir  :string
#  tanggal_lahir :string
#  dapil         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  fraction_id   :string
#  commision_id  :string
#

require 'test_helper'

class ParliamentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

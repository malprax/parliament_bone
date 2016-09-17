# == Schema Information
#
# Table name: parliaments
#
#  id            :integer          not null, primary key
#  name          :string
#  tempat_lahir  :string
#  tanggal_lahir :string
#  dapil_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ParliamentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

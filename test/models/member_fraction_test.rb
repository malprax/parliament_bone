# == Schema Information
#
# Table name: member_fractions
#
#  id            :integer          not null, primary key
#  parliament_id :string
#  structural_id :string
#  fraction_id   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class MemberFractionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

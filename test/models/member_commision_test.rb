# == Schema Information
#
# Table name: member_commisions
#
#  id            :integer          not null, primary key
#  parliament_id :string
#  commision_id  :string
#  structural_id :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class MemberCommisionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

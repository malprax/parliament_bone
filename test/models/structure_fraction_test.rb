# == Schema Information
#
# Table name: structure_fractions
#
#  id                   :integer          not null, primary key
#  fraction_id          :integer
#  parliament_member_id :integer
#  level_id             :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class StructureFractionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

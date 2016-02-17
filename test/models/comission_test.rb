# == Schema Information
#
# Table name: comissions
#
#  id                   :integer          not null, primary key
#  code                 :string
#  parliament_member_id :integer
#  comment              :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class ComissionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

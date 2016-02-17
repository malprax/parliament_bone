# == Schema Information
#
# Table name: information
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class InformationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

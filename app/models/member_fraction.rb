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

class MemberFraction < ActiveRecord::Base
  belongs_to :parliament
  belongs_to :structural
  belongs_to :fraction
end

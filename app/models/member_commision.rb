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

class MemberCommision < ActiveRecord::Base
  belongs_to :parliament
  belongs_to :structural
  belongs_to :commision
end

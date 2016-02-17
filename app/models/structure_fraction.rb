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

class StructureFraction < ActiveRecord::Base
  belongs_to :fraction
  has_many :parliament_members
  has_many :levels

  accepts_nested_attributes_for :parliament_members #, reject_if: :all_blank #, allow_destroy: true
  accepts_nested_attributes_for :levels #, reject_if: :all_blank #, allow_destroy: true
end

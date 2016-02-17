# == Schema Information
#
# Table name: fractions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Fraction < ActiveRecord::Base
  has_many :structure_fractions
  accepts_nested_attributes_for :structure_fractions #, reject_if: :all_blank #, allow_destroy: true

end

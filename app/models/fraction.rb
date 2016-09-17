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
  has_many :member_fractions

end

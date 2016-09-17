# == Schema Information
#
# Table name: structurals
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Structural < ActiveRecord::Base
  has_many :member_commisions
end

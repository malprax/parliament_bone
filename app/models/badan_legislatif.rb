# == Schema Information
#
# Table name: badan_legislatifs
#
#  id         :integer          not null, primary key
#  level      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BadanLegislatif < ActiveRecord::Base
end

# == Schema Information
#
# Table name: dapils
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Dapil < ActiveRecord::Base
  has_many :parliaments
end

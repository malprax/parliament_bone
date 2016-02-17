# == Schema Information
#
# Table name: levels
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Level < ActiveRecord::Base
  belongs_to :structure_fraction

end

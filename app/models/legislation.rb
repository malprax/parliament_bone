# == Schema Information
#
# Table name: legislations
#
#  id            :integer          not null, primary key
#  parliament_id :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Legislation < ActiveRecord::Base
end

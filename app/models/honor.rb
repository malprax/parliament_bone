# == Schema Information
#
# Table name: honors
#
#  id            :integer          not null, primary key
#  parliament_id :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Honor < ActiveRecord::Base
end

# == Schema Information
#
# Table name: commisions
#
#  id         :integer          not null, primary key
#  name       :string
#  position   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Commision < ActiveRecord::Base
  has_many :parliaments
  validates_presence_of :name
end

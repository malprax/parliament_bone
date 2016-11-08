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
  before_validation :downcase_name
  validates_presence_of :name

  private
  def downcase_name
    #code
    self.name = name.downcase if name.present?
  end
  has_many :member_commisions
end

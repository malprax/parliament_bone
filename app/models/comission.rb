# == Schema Information
#
# Table name: comissions
#
#  id                   :integer          not null, primary key
#  code                 :string
#  parliament_member_id :integer
#  comment              :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Comission < ActiveRecord::Base
  belongs_to :parliament_member
  def selisih
    #code
    a = ParliamentMember.all
    b = Fraction.all
    c = a - b
  end
end

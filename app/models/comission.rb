class Comission < ActiveRecord::Base
  belongs_to :parliament_member
  def selisih
    #code
    a = ParliamentMember.all
    b = Fraction.all
    c = a - b
  end
end

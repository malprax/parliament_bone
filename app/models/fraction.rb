class Fraction < ActiveRecord::Base
  has_many :structure_fractions
  accepts_nested_attributes_for :structure_fractions #, reject_if: :all_blank #, allow_destroy: true

end

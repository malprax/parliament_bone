class Fraction < ActiveRecord::Base
  has_many :parliament_members
  has_many :levels
  accepts_nested_attributes_for :parliament_members #, reject_if: :all_blank #, allow_destroy: true
  accepts_nested_attributes_for :levels #, reject_if: :all_blank #, allow_destroy: true
end

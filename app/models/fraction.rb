class Fraction < ActiveRecord::Base
  has_many :parliament_members, dependent: :destroy
end

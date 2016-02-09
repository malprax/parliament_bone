class Fraction < ActiveRecord::Base
  has_many :levels, dependent: :destroy
  has_many :fractions, dependent: :destroy
end

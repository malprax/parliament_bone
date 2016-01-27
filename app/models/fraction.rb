class Fraction < ActiveRecord::Base
  belongs_to :parliament_member
  has_many :comissions, dependent: :destroy
end

class Fraction < ActiveRecord::Base
  # has_many :parliament_members, dependent: :destroy
  # has_many :comissions, dependent: :destroy
  # has_and_belongs_to_many :parliament_members
  belongs_to :level
  belongs_to :parliament_member
  # accepts_nested_attributes_for :parliament_members, allow_destroy: true
end

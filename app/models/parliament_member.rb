class ParliamentMember < ActiveRecord::Base
  has_many :fractions, dependent: :destroy
  # has_and_belongs_to_many :fractions


end

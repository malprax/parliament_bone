class ParliamentMember < ActiveRecord::Base
  belongs_to :fraction
  belongs_to :level
  has_many :comissions, dependent: :destroy
  # has_and_belongs_to_many :fractions
  def fraksi_gabung_nama
    "#{self.fraksi.titleize} - #{self.name.titleize}"
  end

end

class ParliamentMember < ActiveRecord::Base
  has_many :fractions, dependent: :destroy
  has_many :comissions, dependent: :destroy
  # has_and_belongs_to_many :fractions
  def fraksi_gabung_nama
    "#{self.fraksi.titleize} - #{self.name.titleize}"
  end

end

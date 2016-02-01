class Fraction < ActiveRecord::Base

  # has_many :parliament_members, dependent: :destroy
  # has_many :comissions, dependent: :destroy
  # has_and_belongs_to_many :parliament_members
  belongs_to :level
  belongs_to :parliament_member
  before_save :set_priority
  # accepts_nested_attributes_for :parliament_members, allow_destroy: true

  def set_priority
    if self.level.name == 'penasehat'
      self.priority = 1
    elsif self.level.name == 'ketua'
      self.priority = 2
    elsif self.level.name == 'wakil ketua'
      self.priority = 3
    elsif self.level.name == 'sekertaris'
      self.priority = 4
    elsif self.level.name == 'bendahara'
      self.priority = 5
    else self.level.name == 'anggota'
      self.priority = 6
    end
  end

  def selisih
    #code
    a = ParliamentMember.pluck(:name)
    b = Fraction.pluck(:parliament_member_id)
    c = a - b
    self.parliament_member_id = c
  end
end

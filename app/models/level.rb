class Level < ActiveRecord::Base
  has_many :fractions, dependent: :destroy
end

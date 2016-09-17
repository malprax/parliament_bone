class MemberFraction < ActiveRecord::Base
  belongs_to :parliament
  belongs_to :structural
  belongs_to :fraction
end

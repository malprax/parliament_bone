class MemberCommision < ActiveRecord::Base
  belongs_to :parliament
  belongs_to :structural
  belongs_to :commision
end

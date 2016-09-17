# == Schema Information
#
# Table name: budgets
#
#  id            :integer          not null, primary key
#  parliament_id :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Budget < ActiveRecord::Base
end

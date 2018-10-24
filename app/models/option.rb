# == Schema Information
#
# Table name: options
#
#  id         :bigint(8)        not null, primary key
#  order_id   :bigint(8)
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Option < ApplicationRecord
  belongs_to :order
end

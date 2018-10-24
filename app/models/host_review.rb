# == Schema Information
#
# Table name: host_reviews
#
#  id         :bigint(8)        not null, primary key
#  host_id    :bigint(8)
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HostReview < ApplicationRecord
  belongs_to :host
end

# == Schema Information
#
# Table name: room_reviews
#
#  id         :bigint(8)        not null, primary key
#  room_id    :bigint(8)
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RoomReview < ApplicationRecord
  belongs_to :room
end

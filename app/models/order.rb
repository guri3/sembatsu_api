# == Schema Information
#
# Table name: orders
#
#  id             :bigint(8)        not null, primary key
#  guest_id       :bigint(8)
#  room_id        :bigint(8)
#  order_date     :date             not null
#  total_cost     :integer          not null
#  howmany_nights :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :guest
  belongs_to :newroom
end

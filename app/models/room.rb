# == Schema Information
#
# Table name: rooms
#
#  id            :bigint(8)        not null, primary key
#  host_id       :bigint(8)
#  location      :string           not null
#  price         :integer          not null
#  city          :string           not null
#  country       :string           not null
#  wifi          :boolean
#  bed_num       :integer
#  bath_room_num :integer
#  wash_machine  :boolean
#  kitchen       :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Room < ApplicationRecord
end

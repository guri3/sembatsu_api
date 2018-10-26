# == Schema Information
#
# Table name: room_reviews
#
#  id               :bigint(8)        not null, primary key
#  room_id          :bigint(8)
#  satisfaction     :decimal(2, 1)
#  cleanliness      :decimal(2, 1)
#  cost_performance :decimal(2, 1)
#  amenity          :decimal(2, 1)
#  location         :decimal(2, 1)
#  access           :decimal(2, 1)
#  body             :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class RoomReview < ApplicationRecord
  # 関連
  belongs_to :room

  # アクセサ

  # バリデーション

  # スコープ

  # クラスメソッド
end

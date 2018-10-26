# == Schema Information
#
# Table name: reserves
#
#  id           :bigint(8)        not null, primary key
#  guest_id     :bigint(8)
#  room_id      :bigint(8)
#  from         :date             not null
#  to           :date             not null
#  reserve_date :date             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Reserve < ApplicationRecord
  # 関連
  belongs_to :guest
  belongs_to :room
  has_many :reserve_options

  # アクセサ

  # バリデーション

  # スコープ

  # クラスメソッド
end

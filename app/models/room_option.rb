# == Schema Information
#
# Table name: room_options
#
#  id         :bigint(8)        not null, primary key
#  room_id    :bigint(8)
#  option_id  :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RoomOption < ApplicationRecord
  # 関連
  belongs_to :room
  belongs_to :option

  # アクセサ

  # バリデーション

  # スコープ

  # クラスメソッド
end
